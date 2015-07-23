//============================================================================================
//	Author					:Cytron Technologies		
//	Project					:PR31-Digital Radio
//	Project description     :This is a project about the application of AR1010 single chip
//				 			FM radio.PIC16F877A is used in this project.
//                           This sample source code should be compiled with HI-TECH C Compiler v9.83/9.82 with MPLABX
//                           and using HI-TECH v9.83/9.82.
//  Note                	:"R_W" in this code (i2c-ar1000.c) should be change to "RW" if you want to use HI-TECT compiler version 9.80
//=============================================================================================

//=============================================================================================
//	include
//=============================================================================================
#include <htc.h> 
#include "i2c_ar1000.h"       // include "i2c_ar1000.h" header file


//==========================================================================================
//	configuration
//=========================================================================================
__CONFIG ( 0x3F32 );        //The configuration bits “0x3F32” is used to make configure the
                            //correct setting for this PIC, 0x refers to Hexadecimal whereas 3F32 means:
                            //• Set the oscillator as high speed (HS – 4MHz to 20MHz crystal)
                            //•	Off the Watchdog Timer
                            //•	On Power On Timer
                            //•	Off Brown Out Detect
                            //•	Disable Low Voltage Program
                            //•	Off data EEPROM Read Protect
                            //•	Off Flash Program Write Protection
                            //•	Off Code Protect
//__CONFIG(FOSC_HS & WDTE_OFF & PWRTE_ON & BOREN_OFF & LVP_OFF & CPD_OFF & WRT_OFF & CP_OFF);
//==========================================================================================
//	define
//==========================================================================================
#define	_XTAL_FREQ	20000000
#define UART_BAUD	9600
#define ADCON1      	0b00000110        //set portA as digital I/O
#define AR1000_ADD      0x20              //AR1000 slave adress
#define SW1		RB0
#define SW2		RB1
#define INCREASE	RB2
#define DOWN		RB3
#define	RS		RB4
#define	E		RB5
#define	LCD_DATA	PORTD
#define	DATA		RC4                 // SDA
#define	CLK		RC3                 // SCL



//===========================================================================================
//	global variable
//===========================================================================================
unsigned char m=0,vol,i;
unsigned char prog_chan[7]={1080,900,946,968,1006,1045,1077};   // default Channels' RF frequency
unsigned long currentChannel,freq_kHz;
unsigned int STC = 0;      
unsigned int register_values[18] =                              //AR1000 default register values
{		
	0xFFFF, //R0
	0x5B15, //R1
	0xF4B9, //R2 
	0x8012, //R3 
	0x0400, //R4
	0x28AA, //R5
	0x4400, //R6
	0x1EE7,	// R7
	0x7141,	// R8
	0x007D,	// R9
	0x82C6,	// R10  
	0x4F55,	// R11
	0x970C,	// R12
	0xB845,	// R13
	0xFC2D,	// R14 
	0x8097,	// R15
	0x04A1,	// R16
	0xDF6A	// R17
};

unsigned char v2[10] = {0x0,0xF,0xD,0xE,0xF,0xE,0xF,0xF,0xF,0xF};  // volume control (step 9 - 18)
					
unsigned char v1[10] = {0x0,0x7,0x6,0x6,0x6,0x3,0x3,0x2,0x1,0x0};


//==============================================================================================
//	function prototype
//==============================================================================================
void delay(unsigned long data);
void ar1000_init(void);
void setAR1000 (unsigned int freq_kHz);
void set_vol(unsigned char vol);
void send_config(unsigned char data);
void send_char(unsigned char data);
void e_pulse(void);
void lcd_goto(unsigned char data);
void lcd_clr(void);
void send_string(const char *s);
void send_dec(unsigned long data);
void adjust_vol (void);
void adjust_channel(void);
void decrease_chan(void);
void increase_chan(void);
void uart_init (void);
void uart_tx (unsigned char uc_data);
unsigned char uart_rc (void);
void uart_sendstr(const char* s);
void eprom_write (unsigned char channel,unsigned int fm_value);
unsigned int eprom_read (unsigned char channel);
void switch_channel (void);


//============================================================================
// main
//===========================================================================
void main (void)
{

delay(5000);
//initialization
	TRISA = 0b11111111;               // PortA = input
	TRISB = 0b00001111;               // upper PortB = output , lower PortB = input
	TRISD = 0b00000000;               // PortD = output
	PORTA = 0;                        // clear PortA,B,D
    PORTB = 0;
	PORTD = 0;	


// LCD configuration
	send_config(0b00000001);		// clear display at lcd
	send_config(0b00000010);		// Lcd Return to home 
	send_config(0b00000110);		// entry mode-cursor increase 1
	send_config(0b00001100);		// diplay on, cursor off and cursor blink off
	send_config(0b00111000);		// function


	uart_init();                                // initialize of uart function
	ar_i2c_initialize();                        // initialize of I2C function
	ar1000_init();                              // initialize of AR1000 function

	send_string("PR31 :");                      // send message to be displayed on LCD
	lcd_goto(20);                               // Set the position of message to be displayed
	send_string("Digital Radio");               // send message to be displayed on LCD
	uart_sendstr("PR31 = Digital Radio");       // send message to be displayed on Hyperterminal
	set_vol(8);                                 // set volume
	delay(150000);                              // delay

	lcd_clr();	                      	// Clear LCD Display						
	send_string("sw1=chan sw2=vol");   	// send message to be displayed on LCD
	uart_sendstr("sw1=chan sw2=vol");	// send message to be displayed on Hyperterminal
	lcd_goto(20);   			// Set the position of message to be displayed
	send_string("sw1(1s)=set");		// send message to be displayed on LCD
	uart_sendstr("sw1(1s)=set");		// send message to be displayed on Hyperterminal
	

	for (i=1;i<7;i++)                  // set default channels' RF frequency into eeprom
	{                                  // whenever source code is loaded
		freq_kHz = eeprom_read(i);
		if (freq_kHz==255)             
		eprom_write (i,prog_chan[i]);
	}		
					
	while(1)                                        // infinite loop
	{									
		
		if(SW1==0)				// Check if button SW1 is pressed
		{ 
		while (SW1==0);                         // Wait until sw1 is release
		switch_channel();    			// Switch channel 						                       
		adjust_channel();			// Adjust channel	
		}
		
		if (SW2 == 0)                               // Check if SW2 is pressed
		{
			while (SW2 == 0);                   // Wait until SW2 is release
			lcd_goto(0);                        // Set the position of message to be displayed
			send_string("volume level=   ");    // send message to be displayed on LCD
			uart_sendstr("volume level=   ");   // send message to be displayed on Hyperterminal
			m -= 1;                             // maintain at current channel
			adjust_vol ();                      // Adjust volume
		}	

	}
}



//============================================================================================
//	sub function
//============================================================================================

void switch_channel (void)
{
			m++;                                    // next channel
			if ( m > 6) m = 1;			// if mode is added more than 6, set to 1

			lcd_clr();                              // Clear LCD Display 
			send_string("channel ");		// Send message to be displayed on LCD
			uart_tx(0x0C);     	                // Command to new page (hyperterminal display)
			uart_sendstr("Channel ");		// send message to be displayed on Hyperterminal		
			send_char(0x30+m);  			// Display number of channel on LCD		                     
			uart_tx(0x30+m);         		// Display number of channel on hyperterminal
			currentChannel = eprom_read(m);         // read value from eeprom memory
			setAR1000(currentChannel);              // load the value to AR1000 to switch channals' RF frequency
			send_dec(currentChannel);               // display the channel's RF frequency							
}


void adjust_channel(void)                          
{
	while(1)						// infinite loop
	{	
		if (DOWN == 0)                                  // Check if down button is pressed.Press down button to decrease RF frequency
		{
			unsigned int press=0;           	
			while (DOWN==0)
			{
				press += 1;			// Increase press value                                                                 
					if (press >= 650)	// Check if the button is pressed for longer time
					decrease_chan();	// RF frequency will decrease continuously		
				delay(100);			// delay
			}
			decrease_chan();			// if the button is pressed for short time , the RF frequency will decrease one only
			delay(1000);				// delay		
		}
			
		if (INCREASE == 0)				// Check if up button is pressed.Press up button to increase RF frequency
		{
			unsigned int press=0;			
			while (INCREASE==0)
			{
				press += 1;			// Increase press value 
					if (press >= 650)  	// Check if the button is pressed for longer time  
					increase_chan();	// RF frequency will increase continuously			
				delay(100);			// delay
			}
			increase_chan();			// if the button is pressed for short time , the RF frequency will increase one only
			delay(1000);				// delay	
		}

		if (SW1 == 0)					 // Check if SW1 is pressed
		{	unsigned int press=0;	
			while (SW1==0)
			{
					press += 1;                 // Increase press value
					if (press >= 1300)          // if the button is pressed for longer time , current RF frequency is written into eeprom of the channel
					{	
						eprom_write(m,currentChannel);   	// current channel'frequency is written into EEPROM	
						lcd_clr();							// Clear LCD
						send_string("channel ");		// send message to be displayed on LCD
						uart_sendstr("channel ");		// send message to be displayed on Hyperterminal
						send_char(0x30+m);					// Display number of channel on LCD	
						uart_tx(0x30+m);					// Display number of channel on Hyperterminal
						send_string(" setted");			// send message to be displayed on LCD
						uart_sendstr(" setted");		// send message to be displayed on Hyperterminal
						send_dec(currentChannel);		// send current channel 
						while (SW1==0);                		// Waituntil button is released
						m -= 1;  							// maintain at current channel                   
						delay(2000);						// delay
					}	
				delay(100);
				
			}	
			switch_channel();              			// if the button is pressed for short time , channel is switched.
		}
	
		if (SW2 == 0)                      		        // Check if SW2 is pressed.Press SW2 to enter volume mode
		{
			while (SW2 == 0);				// Wait until SW2 is release
			lcd_goto(0);					// Set the position of message to be displayed
			send_string("volume level=   ");		// send message to be displayed on LCD
			uart_sendstr("volume level=   ");		// send message to be displayed on Hyperterminal
			m -= 1;                                         // maintain at current channel
			adjust_vol ();					// Adjust volume
		}	
	}
}

void decrease_chan(void)
{
	currentChannel -=1;                         // decrease RF frequency by 100kHz (1 = 100kHz)
		if ( currentChannel <= 875 )        // if currentChannel less than 875 the value will change to 1080
			currentChannel = 1080;	
	setAR1000 (currentChannel);
	uart_tx(0x0C);                              // Command to new page (hyperterminal display)
	uart_sendstr("channel ");                   // send message to be displayed on Hyperterminal
	uart_tx(0x30+m);                            // Display number of channel on hyperterminal
	send_dec(currentChannel);                   // send current channel
	delay(1500);
}

void increase_chan(void)
{
	currentChannel +=1;                         // increase RF frequency by 100kHz (1 = 100kHz)
		if ( currentChannel >= 1080 )       // if currentChannel more than 1080 the value will change to 875
			currentChannel = 875;	
	setAR1000 (currentChannel);
	uart_tx(0x0C);                                  // Command to new page (hyperterminal display)
	uart_sendstr("channel ");			// send message to be displayed on Hyperterminal
	uart_tx(0x30+m);					// Display number of channel on hyperterminal					
	send_dec(currentChannel);			// send current channel 			
	delay(1500);
}	

void send_dec(unsigned long data)           // convert RF frequency value into ascii value and display
{	unsigned long no[5];
	unsigned int press;
	unsigned short i;
	no[0]=(data/1000+0x30);             // thousand (accually is hundred if refer to the dsplay value, but the calculated value from AR1000 is in hundred thousand scale)
	data=data%1000;					  // eg: 1000 x 100kHz = 100 x 1 MHz
	no[1]=(data/100+0x30);              // hundred
	data=data%100;
	no[2]=(data/10+0x30);         // ten
    no[3]=0x2E;                       // "."(dot)  ascii code  
	no[4]=(data%10+0x30);         // one
	lcd_goto(20);
	send_string("FM=");
	uart_sendstr("FM=");
	for (i=0;i<5;i++)             // display the 4 converted number and '.' symbol ( in MHz unit)
 {
	send_char(no[i]);
	uart_tx(no[i]);
 }
	delay(1000);
}	

void set_vol(unsigned char key)
{
	vol = key;                                                // record the volume's level

	register_values[1]  |= (1<<1);                            // set hmute bit
	ar_i2c_write(AR1000_ADD, 1, register_values[1]);

	register_values[3] = (register_values[3] & ~0x0780) | (v1[key] << 7);  // VOLUME<3:0> = R3 <10:7>
	ar_i2c_write(AR1000_ADD, 3, register_values[3]);
	
	register_values[14] = (register_values[14] & ~0xF000)| (v2[key]<< 12);  // VOLUME2<3:0> = R3 <15:12>
	ar_i2c_write(AR1000_ADD, 14, register_values[14]);
	
    register_values[1] &= ~(1<<1);                                              // clear hmute bit
    ar_i2c_write(AR1000_ADD, 1,register_values[1]);
}

void adjust_vol (void)
{	unsigned char vol_default,check;           // to monitor the condition of volume's level
											   
	while (1){
	check = 0;
	lcd_goto(13);				// Set the position of message to be displayed	
	vol_default = vol;                      // save default volume level for comparison
	send_char(0x30+vol);                    // display volume level for the first loop and when the volume's level change (check = 1)
	uart_tx(0x30+vol);						
	delay(10);	
	
	
	while(check==0)                                     // loop if volume's level no change.
	{		
			if (DOWN == 0)                      // decrease volume's level
			{	
				while (DOWN==0);
				vol -=1;
					if ( vol <= 1 )             // min volume's level=1
					vol = 1;	
				set_vol (vol);
				delay(100);		
			}
		
			if (INCREASE == 0)                 // increase volume's level
			{			
				while (INCREASE==0);
				vol +=1;
					if (vol >= 9)      // max volume's level
					vol = 9;
				set_vol (vol);
				delay(100);	
			}
							
			if (SW1==0)                        // jump to switch channel mode
			{
			return;                            
			}

			check = vol & ~(vol_default);      // Exclusive-OR operation to check if the volume's level change
			check |= ~vol & vol_default;	
					
	}
		uart_tx(0x08);                              // backspace (monitor display)
}
}
//==========================================================================
//	AR1000	functions
//==========================================================================

void ar1000_init(void)
{ 	
	delay(100);                                                 //Wait for power to stabilize
	ar_i2c_write(AR1000_ADD, 0, register_values[0] & 0xFFFE);   // disable AR1000

	for(int i = 1 ; i < 18 ; i++)
	{
		ar_i2c_write(AR1000_ADD, i, register_values[i]);    //Write default registers values to registers 1 to 17
	}	

	ar_i2c_write(AR1000_ADD, 0, register_values[0]);            //enable AR1000

	while(STC == 0)                                             // loop until STC set ( calibration state end )
	{
		STC = ar_i2c_read(AR1000_ADD, 0x13);                // STC = STATUS(addr=0x13) <5>
		STC &= (1<<5);
		delay(10);

	}

}

void setAR1000 (unsigned int freq_kHz)                      // load desire FM into AR1000
{	
	freq_kHz -= 690;                                    // RF_frequency(kHz) = 690 + CHAN
                                                            // CHAN = R2 <8:0>
	register_values[1]  |= (1<<1);                      // set hmute bi
	ar_i2c_write(AR1000_ADD, 1, register_values[1]);    // hmute = R1 <1>

	
	register_values[2] &= ~(0x01FF | 0x0200);	    //clear tune bit and chan bits
	ar_i2c_write(AR1000_ADD, 2, register_values[2]);


	register_values[3] &= ~(1<<14);   					//clear seek bit
	ar_i2c_write(AR1000_ADD, 3,register_values[3]);     // seek = R3 <14>
	
	
	register_values[3] |= (1<<13);                      // set space = 100k (seek stepping increments in 100k steps)	
	ar_i2c_write(AR1000_ADD, 3,register_values[3]);     // space = R3 <13>

	
	register_values[2] |= freq_kHz;  			//set CHAN bits
	ar_i2c_write(AR1000_ADD, 2,register_values[2]);	         //CHAN = R2 <8:0>


	register_values[2] |= (1<<9);  							//set tune bit
	ar_i2c_write(AR1000_ADD, 2,register_values[2]);			//tune = R2 <9>

		while(STC == 0)                                    // loop until STC set ( calibration state end )
	{
		STC = ar_i2c_read(AR1000_ADD, 0x13);           // STC = STATUS(addr=0x13) <5>
		STC &= (1<<5);
		delay(10);
	}



    register_values[1] &= ~(1<<1);                        // clear hmute bit
    ar_i2c_write(AR1000_ADD, 1,register_values[1]);

	currentChannel = (ar_i2c_read(AR1000_ADD, 0x13)&0xFF80)>>7;     // READCHAN = STATUS <15:7>
	currentChannel += 690;											// RF_frequency(kHz) = 690 + CHAN 
}

//==========================================================================
//	LCD functions
//==========================================================================
void delay(unsigned long data)               
{
	for( ;data>0;data-=1);
}

void send_config(unsigned char data)
{
	RS=0;										// configuration mode
	LCD_DATA=data;
	delay(300);
	e_pulse();
}
void send_char(unsigned char data)
{
	RS=1;										// write mode
	LCD_DATA=data;
	delay(300);
	e_pulse();
}
void e_pulse(void)                              
{
	E=1;
	delay(300);
	E=0;
	delay(300);
}
void lcd_goto(unsigned char data)
{
 	if(data<16)                           // first row
	{
	 	send_config(0x80+data);
	}
	else
	{
	 	data=data-20;                     // second row
		send_config(0xc0+data);
	}
}
void lcd_clr(void)						// clear LCD
{
 	send_config(0b00000001);             
	send_config(0b00000010);
	delay(350);	
}
void send_string(const char *s)        // send characters one by one until end of string
{          
	unsigned char i=0;
  	while (s && *s)send_char (*s++);
}


//==========================================================================
//	uart functions
//==========================================================================
void uart_init (void)    
{ 
	BRGH = 1;
	SPBRG = (_XTAL_FREQ / 16 / UART_BAUD) - 1;
	SPEN = 1;
	CREN = 1;
	TXEN = 1;
	TRISC6 = 0;               // RC6 = TX
	TRISC7 = 1;               // RC7 = RC
	uart_tx(0x0C);
}

void uart_tx (unsigned char uc_data)
{
	while (TXIF == 0);           // wait until all data is transmited
	TXREG = uc_data;
}

unsigned char uart_rc (void)
{ 
	if (OERR == 1)
	{
		CREN = 0;
		CREN = 1;
	}
	while (RCIF == 0);           // wait until all data is received
	return RCREG;
}

void uart_sendstr(const char *s)
{		
	uart_tx(0x0A); 			// ASCII code for new line
	uart_tx(0x0D); 			// ASCII code for return

	while (*s != '\0')   	// Loop until the end of string.
	{
	uart_tx(*s);		
	s++;					// Point to next character.
	}
	
}
//==========================================================================
//	eeprom functions
//==========================================================================

unsigned int eprom_read (unsigned char channel_adr)
{ 
	unsigned int fm_value;
	EEADR = channel_adr;         // load address to be read into EEADR
	EEPGD = 0;
	RD = 1;
	while (RD == 1);             // wait until all data is read
	fm_value = (EEDATA + 825);   // EEDATA = 1 byte (255-0)
								 // fm_value(875-1080) = EEDATA + 825 
	return fm_value;
}

void eprom_write (unsigned char channel_adr,unsigned int fm_value)
{
	EEADR = channel_adr;		// load address to be read into EEADR
	fm_value -= 825;    		 // fm_value(875-1080) = EEDATA + 825
	EEDATA = fm_value;
	EEPGD = 0;
	WREN = 1;
	EECON2 = 0x55;
	EECON2 = 0xAA;
	WR = 1;
	WREN = 0;
	while (WR == 1);			// wait until all data is written
}

