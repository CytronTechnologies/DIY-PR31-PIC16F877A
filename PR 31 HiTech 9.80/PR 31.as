opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 22 "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	psect config,class=CONFIG,delta=2 ;#
# 22 "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	dw 0x3F32 ;#
	FNCALL	_main,_delay
	FNCALL	_main,_send_config
	FNCALL	_main,_uart_init
	FNCALL	_main,_ar_i2c_initialize
	FNCALL	_main,_ar1000_init
	FNCALL	_main,_send_string
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_uart_sendstr
	FNCALL	_main,_set_vol
	FNCALL	_main,_lcd_clr
	FNCALL	_main,_eeprom_read
	FNCALL	_main,_eprom_write
	FNCALL	_main,_switch_channel
	FNCALL	_main,_adjust_channel
	FNCALL	_main,_adjust_vol
	FNCALL	_adjust_channel,_decrease_chan
	FNCALL	_adjust_channel,_delay
	FNCALL	_adjust_channel,_increase_chan
	FNCALL	_adjust_channel,_eprom_write
	FNCALL	_adjust_channel,_lcd_clr
	FNCALL	_adjust_channel,_send_string
	FNCALL	_adjust_channel,_uart_sendstr
	FNCALL	_adjust_channel,_send_char
	FNCALL	_adjust_channel,_uart_tx
	FNCALL	_adjust_channel,_send_dec
	FNCALL	_adjust_channel,_switch_channel
	FNCALL	_adjust_channel,_lcd_goto
	FNCALL	_adjust_channel,_adjust_vol
	FNCALL	_increase_chan,_setAR1000
	FNCALL	_increase_chan,_uart_tx
	FNCALL	_increase_chan,_uart_sendstr
	FNCALL	_increase_chan,_send_dec
	FNCALL	_increase_chan,_delay
	FNCALL	_decrease_chan,_setAR1000
	FNCALL	_decrease_chan,_uart_tx
	FNCALL	_decrease_chan,_uart_sendstr
	FNCALL	_decrease_chan,_send_dec
	FNCALL	_decrease_chan,_delay
	FNCALL	_switch_channel,_lcd_clr
	FNCALL	_switch_channel,_send_string
	FNCALL	_switch_channel,_uart_tx
	FNCALL	_switch_channel,_uart_sendstr
	FNCALL	_switch_channel,_send_char
	FNCALL	_switch_channel,_eprom_read
	FNCALL	_switch_channel,_setAR1000
	FNCALL	_switch_channel,_send_dec
	FNCALL	_send_dec,___lldiv
	FNCALL	_send_dec,___llmod
	FNCALL	_send_dec,_lcd_goto
	FNCALL	_send_dec,_send_string
	FNCALL	_send_dec,_uart_sendstr
	FNCALL	_send_dec,_send_char
	FNCALL	_send_dec,_uart_tx
	FNCALL	_send_dec,_delay
	FNCALL	_adjust_vol,_lcd_goto
	FNCALL	_adjust_vol,_send_char
	FNCALL	_adjust_vol,_uart_tx
	FNCALL	_adjust_vol,_delay
	FNCALL	_adjust_vol,_set_vol
	FNCALL	_lcd_clr,_send_config
	FNCALL	_lcd_clr,_delay
	FNCALL	_lcd_goto,_send_config
	FNCALL	_send_string,_send_char
	FNCALL	_send_char,_delay
	FNCALL	_send_char,_e_pulse
	FNCALL	_send_config,_delay
	FNCALL	_send_config,_e_pulse
	FNCALL	_e_pulse,_delay
	FNCALL	_setAR1000,_ar_i2c_write
	FNCALL	_setAR1000,_ar_i2c_read
	FNCALL	_setAR1000,_delay
	FNCALL	_set_vol,_ar_i2c_write
	FNCALL	_uart_sendstr,_uart_tx
	FNCALL	_ar1000_init,_delay
	FNCALL	_ar1000_init,_ar_i2c_write
	FNCALL	_ar1000_init,_ar_i2c_read
	FNCALL	_uart_init,_uart_tx
	FNROOT	_main
	global	_v2
	global	_prog_chan
	global	_v1
	global	_register_values
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	81

;initializer for _v2
	retlw	0
	retlw	0Fh
	retlw	0Dh
	retlw	0Eh
	retlw	0Fh
	retlw	0Eh
	retlw	0Fh
	retlw	0Fh
	retlw	0Fh
	retlw	0Fh
	line	56

;initializer for _prog_chan
	retlw	038h
	retlw	084h
	retlw	0B2h
	retlw	0C8h
	retlw	0EEh
	retlw	015h
	retlw	035h
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	83

;initializer for _v1
	retlw	0
	retlw	07h
	retlw	06h
	retlw	06h
	retlw	06h
	retlw	03h
	retlw	03h
	retlw	02h
	retlw	01h
	retlw	0
	line	59

;initializer for _register_values
	retlw	0FFh
	retlw	0FFh

	retlw	015h
	retlw	05Bh

	retlw	0B9h
	retlw	0F4h

	retlw	012h
	retlw	080h

	retlw	0
	retlw	04h

	retlw	0AAh
	retlw	028h

	retlw	0
	retlw	044h

	retlw	0E7h
	retlw	01Eh

	retlw	041h
	retlw	071h

	retlw	07Dh
	retlw	0

	retlw	0C6h
	retlw	082h

	retlw	055h
	retlw	04Fh

	retlw	0Ch
	retlw	097h

	retlw	045h
	retlw	0B8h

	retlw	02Dh
	retlw	0FCh

	retlw	097h
	retlw	080h

	retlw	0A1h
	retlw	04h

	retlw	06Ah
	retlw	0DFh

	global	_currentChannel
	global	_freq_kHz
	global	_STC
	global	_i
	global	_m
	global	_vol
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_SSPBUF
_SSPBUF	set	19
	global	_TXREG
_TXREG	set	25
	global	_CREN
_CREN	set	196
	global	_OERR
_OERR	set	193
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RCIF
_RCIF	set	101
	global	_SPEN
_SPEN	set	199
	global	_SSPEN
_SSPEN	set	165
	global	_SSPM0
_SSPM0	set	160
	global	_SSPM1
_SSPM1	set	161
	global	_SSPM2
_SSPM2	set	162
	global	_SSPM3
_SSPM3	set	163
	global	_SSPOV
_SSPOV	set	166
	global	_TXIF
_TXIF	set	100
	global	_WCOL
_WCOL	set	167
	global	_SPBRG
_SPBRG	set	153
	global	_SSPADD
_SSPADD	set	147
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_ACKDT
_ACKDT	set	1165
	global	_ACKEN
_ACKEN	set	1164
	global	_ACKSTAT
_ACKSTAT	set	1166
	global	_BF
_BF	set	1184
	global	_BRGH
_BRGH	set	1218
	global	_PEN
_PEN	set	1162
	global	_RCEN
_RCEN	set	1163
	global	_RSEN
_RSEN	set	1161
	global	_RW
_RW	set	1186
	global	_SEN
_SEN	set	1160
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_TXEN
_TXEN	set	1221
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_EEPGD
_EEPGD	set	3175
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_3:	
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	51	;'3'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	61	;'='
	retlw	32	;' '
	retlw	68	;'D'
	retlw	105	;'i'
	retlw	103	;'g'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	0
psect	strings
	
STR_8:	
	retlw	118	;'v'
	retlw	111	;'o'
	retlw	108	;'l'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	61	;'='
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	115	;'s'
	retlw	119	;'w'
	retlw	49	;'1'
	retlw	61	;'='
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	119	;'w'
	retlw	50	;'2'
	retlw	61	;'='
	retlw	118	;'v'
	retlw	111	;'o'
	retlw	108	;'l'
	retlw	0
psect	strings
	
STR_6:	
	retlw	115	;'s'
	retlw	119	;'w'
	retlw	49	;'1'
	retlw	40	;'('
	retlw	49	;'1'
	retlw	115	;'s'
	retlw	41	;')'
	retlw	61	;'='
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	0
psect	strings
	
STR_11:	
	retlw	67	;'C'
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_10:	
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_14:	
	retlw	32	;' '
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_1:	
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	51	;'3'
	retlw	49	;'1'
	retlw	32	;' '
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_20:	
	retlw	70	;'F'
	retlw	77	;'M'
	retlw	61	;'='
	retlw	0
psect	strings
STR_7	equ	STR_6+0
STR_2	equ	STR_3+7
STR_5	equ	STR_4+0
STR_15	equ	STR_14+0
STR_21	equ	STR_20+0
STR_12	equ	STR_10+0
STR_13	equ	STR_10+0
STR_18	equ	STR_10+0
STR_19	equ	STR_10+0
STR_9	equ	STR_8+0
STR_16	equ	STR_8+0
STR_17	equ	STR_8+0
	file	"PR 31.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_currentChannel:
       ds      4

_freq_kHz:
       ds      4

_STC:
       ds      2

_i:
       ds      1

_m:
       ds      1

_vol:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	81
_v2:
       ds      10

psect	dataBANK0
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	56
_prog_chan:
       ds      7

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	83
_v1:
       ds      10

psect	dataBANK1
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	59
_register_values:
       ds      36

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
	clrf	((__pbssBANK0)+12)&07Fh
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+46)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	movlw low(__pdataBANK0+17)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_send_config
?_send_config:	; 0 bytes @ 0x0
	global	?_uart_init
?_uart_init:	; 0 bytes @ 0x0
	global	?_ar1000_init
?_ar1000_init:	; 0 bytes @ 0x0
	global	?_send_string
?_send_string:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_uart_sendstr
?_uart_sendstr:	; 0 bytes @ 0x0
	global	?_set_vol
?_set_vol:	; 0 bytes @ 0x0
	global	?_lcd_clr
?_lcd_clr:	; 0 bytes @ 0x0
	global	??_eeprom_read
??_eeprom_read:	; 0 bytes @ 0x0
	global	?_eprom_write
?_eprom_write:	; 0 bytes @ 0x0
	global	?_switch_channel
?_switch_channel:	; 0 bytes @ 0x0
	global	?_adjust_channel
?_adjust_channel:	; 0 bytes @ 0x0
	global	?_adjust_vol
?_adjust_vol:	; 0 bytes @ 0x0
	global	?_uart_tx
?_uart_tx:	; 0 bytes @ 0x0
	global	??_uart_tx
??_uart_tx:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	global	?_decrease_chan
?_decrease_chan:	; 0 bytes @ 0x0
	global	?_increase_chan
?_increase_chan:	; 0 bytes @ 0x0
	global	?_e_pulse
?_e_pulse:	; 0 bytes @ 0x0
	global	?_ar_i2c_initialize
?_ar_i2c_initialize:	; 0 bytes @ 0x0
	global	??_ar_i2c_initialize
??_ar_i2c_initialize:	; 0 bytes @ 0x0
	global	?_ar_i2c_write
?_ar_i2c_write:	; 0 bytes @ 0x0
	global	?_eeprom_read
?_eeprom_read:	; 1 bytes @ 0x0
	global	?_eprom_read
?_eprom_read:	; 2 bytes @ 0x0
	global	?_ar_i2c_read
?_ar_i2c_read:	; 2 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___llmod
?___llmod:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	ar_i2c_read@ar_register
ar_i2c_read@ar_register:	; 1 bytes @ 0x0
	global	ar_i2c_write@ar_register
ar_i2c_write@ar_register:	; 1 bytes @ 0x0
	global	uart_tx@uc_data
uart_tx@uc_data:	; 1 bytes @ 0x0
	global	eprom_write@fm_value
eprom_write@fm_value:	; 2 bytes @ 0x0
	global	delay@RC4
delay@RC4:	; 4 bytes @ 0x0
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	??_uart_init
??_uart_init:	; 0 bytes @ 0x1
	global	??_uart_sendstr
??_uart_sendstr:	; 0 bytes @ 0x1
	global	ar_i2c_write@ar_data
ar_i2c_write@ar_data:	; 4 bytes @ 0x1
	ds	1
	global	??_eprom_write
??_eprom_write:	; 0 bytes @ 0x2
	global	??_eprom_read
??_eprom_read:	; 0 bytes @ 0x2
	global	??_ar_i2c_read
??_ar_i2c_read:	; 0 bytes @ 0x2
	global	uart_sendstr@s
uart_sendstr@s:	; 1 bytes @ 0x2
	global	eprom_write@channel_adr
eprom_write@channel_adr:	; 1 bytes @ 0x2
	global	eprom_read@fm_value
eprom_read@fm_value:	; 2 bytes @ 0x2
	ds	1
	global	eeprom_read@addr
eeprom_read@addr:	; 1 bytes @ 0x3
	ds	1
	global	??_delay
??_delay:	; 0 bytes @ 0x4
	global	eprom_read@channel_adr
eprom_read@channel_adr:	; 1 bytes @ 0x4
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	??_ar_i2c_write
??_ar_i2c_write:	; 0 bytes @ 0x5
	ds	3
	global	??_send_config
??_send_config:	; 0 bytes @ 0x8
	global	??_send_char
??_send_char:	; 0 bytes @ 0x8
	global	??_e_pulse
??_e_pulse:	; 0 bytes @ 0x8
	global	??___llmod
??___llmod:	; 0 bytes @ 0x8
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x8
	global	send_config@RC4
send_config@RC4:	; 1 bytes @ 0x8
	global	send_char@RC4
send_char@RC4:	; 1 bytes @ 0x8
	ds	1
	global	??_send_string
??_send_string:	; 0 bytes @ 0x9
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x9
	global	??_lcd_clr
??_lcd_clr:	; 0 bytes @ 0x9
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x9
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x9
	ds	1
	global	ar_i2c_write@ar_slave_address
ar_i2c_write@ar_slave_address:	; 1 bytes @ 0xA
	global	lcd_goto@RC4
lcd_goto@RC4:	; 1 bytes @ 0xA
	global	send_string@i
send_string@i:	; 1 bytes @ 0xA
	ds	1
	global	ar_i2c_write@ar_transmit_byte1
ar_i2c_write@ar_transmit_byte1:	; 1 bytes @ 0xB
	global	send_string@s
send_string@s:	; 1 bytes @ 0xB
	ds	1
	global	ar_i2c_write@ar_transmit_byte2
ar_i2c_write@ar_transmit_byte2:	; 1 bytes @ 0xC
	ds	1
	global	set_vol@key
set_vol@key:	; 1 bytes @ 0xD
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xD
	ds	1
	global	??_adjust_channel
??_adjust_channel:	; 0 bytes @ 0xE
	global	??_increase_chan
??_increase_chan:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_set_vol
??_set_vol:	; 0 bytes @ 0x0
	global	?_send_dec
?_send_dec:	; 0 bytes @ 0x0
	global	ar_i2c_read@ar_received_byte
ar_i2c_read@ar_received_byte:	; 2 bytes @ 0x0
	global	send_dec@RC4
send_dec@RC4:	; 4 bytes @ 0x0
	ds	2
	global	ar_i2c_read@ar_received_byte1
ar_i2c_read@ar_received_byte1:	; 1 bytes @ 0x2
	ds	1
	global	ar_i2c_read@ar_received_byte2
ar_i2c_read@ar_received_byte2:	; 1 bytes @ 0x3
	ds	1
	global	??_adjust_vol
??_adjust_vol:	; 0 bytes @ 0x4
	global	??_send_dec
??_send_dec:	; 0 bytes @ 0x4
	global	ar_i2c_read@ar_slave_address
ar_i2c_read@ar_slave_address:	; 1 bytes @ 0x4
	ds	1
	global	adjust_vol@check
adjust_vol@check:	; 1 bytes @ 0x5
	global	ar_i2c_read@count
ar_i2c_read@count:	; 4 bytes @ 0x5
	ds	1
	global	adjust_vol@vol_default
adjust_vol@vol_default:	; 1 bytes @ 0x6
	ds	2
	global	send_dec@no
send_dec@no:	; 20 bytes @ 0x8
	ds	1
	global	??_ar1000_init
??_ar1000_init:	; 0 bytes @ 0x9
	global	?_setAR1000
?_setAR1000:	; 0 bytes @ 0x9
	global	setAR1000@freq_kHz
setAR1000@freq_kHz:	; 2 bytes @ 0x9
	ds	2
	global	??_setAR1000
??_setAR1000:	; 0 bytes @ 0xB
	ds	2
	global	ar1000_init@i
ar1000_init@i:	; 2 bytes @ 0xD
	ds	15
	global	send_dec@i
send_dec@i:	; 2 bytes @ 0x1C
	ds	2
	global	??_switch_channel
??_switch_channel:	; 0 bytes @ 0x1E
	global	??_decrease_chan
??_decrease_chan:	; 0 bytes @ 0x1E
	ds	4
	global	adjust_channel@press
adjust_channel@press:	; 2 bytes @ 0x22
	ds	2
	global	adjust_channel@press_719
adjust_channel@press_719:	; 2 bytes @ 0x24
	ds	2
	global	adjust_channel@press_720
adjust_channel@press_720:	; 2 bytes @ 0x26
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x28
	ds	4
;;Data sizes: Strings 104, constant 0, data 63, bss 13, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     44      74
;; BANK1           80      0      46
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_eprom_read	unsigned int  size(1) Largest target is 0
;;
;; ?___llmod	unsigned long  size(1) Largest target is 0
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?_ar_i2c_read	unsigned int  size(1) Largest target is 36
;;		 -> register_values(BANK1[36]), 
;;
;; uart_sendstr@s	PTR const unsigned char  size(1) Largest target is 21
;;		 -> STR_21(CODE[4]), STR_19(CODE[9]), STR_18(CODE[9]), STR_17(CODE[17]), 
;;		 -> STR_15(CODE[8]), STR_13(CODE[9]), STR_11(CODE[9]), STR_9(CODE[17]), 
;;		 -> STR_7(CODE[12]), STR_5(CODE[17]), STR_3(CODE[21]), 
;;
;; send_string@s	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_20(CODE[4]), STR_16(CODE[17]), STR_14(CODE[8]), STR_12(CODE[9]), 
;;		 -> STR_10(CODE[9]), STR_8(CODE[17]), STR_6(CODE[12]), STR_4(CODE[17]), 
;;		 -> STR_2(CODE[14]), STR_1(CODE[7]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_set_vol
;;   _send_dec->___lldiv
;;   _adjust_vol->_set_vol
;;   _lcd_clr->_send_config
;;   _lcd_goto->_send_config
;;   _send_string->_send_char
;;   _send_char->_delay
;;   _send_config->_delay
;;   _e_pulse->_delay
;;   _setAR1000->_ar_i2c_write
;;   _set_vol->_ar_i2c_write
;;   _uart_sendstr->_uart_tx
;;   _ar1000_init->_ar_i2c_write
;;   _uart_init->_uart_tx
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_adjust_channel
;;   _adjust_channel->_decrease_chan
;;   _increase_chan->_send_dec
;;   _decrease_chan->_send_dec
;;   _switch_channel->_send_dec
;;   _adjust_vol->_set_vol
;;   _setAR1000->_ar_i2c_read
;;   _ar1000_init->_ar_i2c_read
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0   13263
;;                                             40 BANK0      4     4      0
;;                              _delay
;;                        _send_config
;;                          _uart_init
;;                  _ar_i2c_initialize
;;                        _ar1000_init
;;                        _send_string
;;                           _lcd_goto
;;                       _uart_sendstr
;;                            _set_vol
;;                            _lcd_clr
;;                        _eeprom_read
;;                        _eprom_write
;;                     _switch_channel
;;                     _adjust_channel
;;                         _adjust_vol
;; ---------------------------------------------------------------------------------
;; (1) _adjust_channel                                       6     6      0    8823
;;                                             34 BANK0      6     6      0
;;                      _decrease_chan
;;                              _delay
;;                      _increase_chan
;;                        _eprom_write
;;                            _lcd_clr
;;                        _send_string
;;                       _uart_sendstr
;;                          _send_char
;;                            _uart_tx
;;                           _send_dec
;;                     _switch_channel
;;                           _lcd_goto
;;                         _adjust_vol
;; ---------------------------------------------------------------------------------
;; (2) _increase_chan                                        0     0      0    1836
;;                          _setAR1000
;;                            _uart_tx
;;                       _uart_sendstr
;;                           _send_dec
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _decrease_chan                                        4     4      0    1836
;;                                             30 BANK0      4     4      0
;;                          _setAR1000
;;                            _uart_tx
;;                       _uart_sendstr
;;                           _send_dec
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _switch_channel                                       1     1      0    2285
;;                                             30 BANK0      1     1      0
;;                            _lcd_clr
;;                        _send_string
;;                            _uart_tx
;;                       _uart_sendstr
;;                          _send_char
;;                         _eprom_read
;;                          _setAR1000
;;                           _send_dec
;; ---------------------------------------------------------------------------------
;; (3) _send_dec                                            32    28      4    1315
;;                                              0 BANK0     30    26      4
;;                            ___lldiv
;;                            ___llmod
;;                           _lcd_goto
;;                        _send_string
;;                       _uart_sendstr
;;                          _send_char
;;                            _uart_tx
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _adjust_vol                                           3     3      0     650
;;                                              4 BANK0      3     3      0
;;                           _lcd_goto
;;                          _send_char
;;                            _uart_tx
;;                              _delay
;;                            _set_vol
;; ---------------------------------------------------------------------------------
;; (3) _lcd_clr                                              0     0      0     157
;;                        _send_config
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _lcd_goto                                             2     2      0     201
;;                                              9 COMMON     2     2      0
;;                        _send_config
;; ---------------------------------------------------------------------------------
;; (4) _send_string                                          3     3      0     180
;;                                              9 COMMON     3     3      0
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (2) _send_char                                            1     1      0     112
;;                                              8 COMMON     1     1      0
;;                              _delay
;;                            _e_pulse
;; ---------------------------------------------------------------------------------
;; (3) _send_config                                          1     1      0     112
;;                                              8 COMMON     1     1      0
;;                              _delay
;;                            _e_pulse
;; ---------------------------------------------------------------------------------
;; (3) _e_pulse                                              0     0      0      45
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _setAR1000                                            5     3      2     387
;;                                              9 BANK0      5     3      2
;;                       _ar_i2c_write
;;                        _ar_i2c_read
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _set_vol                                              5     5      0     200
;;                                             13 COMMON     1     1      0
;;                                              0 BANK0      4     4      0
;;                       _ar_i2c_write
;; ---------------------------------------------------------------------------------
;; (4) _uart_sendstr                                         2     2      0      67
;;                                              1 COMMON     2     2      0
;;                            _uart_tx
;; ---------------------------------------------------------------------------------
;; (1) _ar1000_init                                          6     6      0     454
;;                                              9 BANK0      6     6      0
;;                              _delay
;;                       _ar_i2c_write
;;                        _ar_i2c_read
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0      22
;;                            _uart_tx
;; ---------------------------------------------------------------------------------
;; (4) ___lldiv                                             14     6      8     162
;;                                              0 COMMON    14     6      8
;; ---------------------------------------------------------------------------------
;; (4) ___llmod                                             10     2      8     159
;;                                              0 COMMON    10     2      8
;; ---------------------------------------------------------------------------------
;; (3) _eprom_read                                           5     3      2      45
;;                                              0 COMMON     5     3      2
;; ---------------------------------------------------------------------------------
;; (2) _uart_tx                                              1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _eprom_write                                          3     1      2      45
;;                                              0 COMMON     3     1      2
;; ---------------------------------------------------------------------------------
;; (1) _eeprom_read                                          4     4      0      22
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                8     4      4      45
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (3) _ar_i2c_write                                        13     8      5     134
;;                                              0 COMMON    13     8      5
;; ---------------------------------------------------------------------------------
;; (4) _ar_i2c_read                                         15    13      2     185
;;                                              0 COMMON     6     4      2
;;                                              0 BANK0      9     9      0
;; ---------------------------------------------------------------------------------
;; (1) _ar_i2c_initialize                                    0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay
;;   _send_config
;;     _delay
;;     _e_pulse
;;       _delay
;;   _uart_init
;;     _uart_tx
;;   _ar_i2c_initialize
;;   _ar1000_init
;;     _delay
;;     _ar_i2c_write
;;     _ar_i2c_read
;;   _send_string
;;     _send_char
;;       _delay
;;       _e_pulse
;;         _delay
;;   _lcd_goto
;;     _send_config
;;       _delay
;;       _e_pulse
;;         _delay
;;   _uart_sendstr
;;     _uart_tx
;;   _set_vol
;;     _ar_i2c_write
;;   _lcd_clr
;;     _send_config
;;       _delay
;;       _e_pulse
;;         _delay
;;     _delay
;;   _eeprom_read
;;   _eprom_write
;;   _switch_channel
;;     _lcd_clr
;;       _send_config
;;         _delay
;;         _e_pulse
;;           _delay
;;       _delay
;;     _send_string
;;       _send_char
;;         _delay
;;         _e_pulse
;;           _delay
;;     _uart_tx
;;     _uart_sendstr
;;       _uart_tx
;;     _send_char
;;       _delay
;;       _e_pulse
;;         _delay
;;     _eprom_read
;;     _setAR1000
;;       _ar_i2c_write
;;       _ar_i2c_read
;;       _delay
;;     _send_dec
;;       ___lldiv
;;       ___llmod
;;       _lcd_goto
;;         _send_config
;;           _delay
;;           _e_pulse
;;             _delay
;;       _send_string
;;         _send_char
;;           _delay
;;           _e_pulse
;;             _delay
;;       _uart_sendstr
;;         _uart_tx
;;       _send_char
;;         _delay
;;         _e_pulse
;;           _delay
;;       _uart_tx
;;       _delay
;;   _adjust_channel
;;     _decrease_chan
;;       _setAR1000
;;         _ar_i2c_write
;;         _ar_i2c_read
;;         _delay
;;       _uart_tx
;;       _uart_sendstr
;;         _uart_tx
;;       _send_dec
;;         ___lldiv
;;         ___llmod
;;         _lcd_goto
;;           _send_config
;;             _delay
;;             _e_pulse
;;               _delay
;;         _send_string
;;           _send_char
;;             _delay
;;             _e_pulse
;;               _delay
;;         _uart_sendstr
;;           _uart_tx
;;         _send_char
;;           _delay
;;           _e_pulse
;;             _delay
;;         _uart_tx
;;         _delay
;;       _delay
;;     _delay
;;     _increase_chan
;;       _setAR1000
;;         _ar_i2c_write
;;         _ar_i2c_read
;;         _delay
;;       _uart_tx
;;       _uart_sendstr
;;         _uart_tx
;;       _send_dec
;;         ___lldiv
;;         ___llmod
;;         _lcd_goto
;;           _send_config
;;             _delay
;;             _e_pulse
;;               _delay
;;         _send_string
;;           _send_char
;;             _delay
;;             _e_pulse
;;               _delay
;;         _uart_sendstr
;;           _uart_tx
;;         _send_char
;;           _delay
;;           _e_pulse
;;             _delay
;;         _uart_tx
;;         _delay
;;       _delay
;;     _eprom_write
;;     _lcd_clr
;;       _send_config
;;         _delay
;;         _e_pulse
;;           _delay
;;       _delay
;;     _send_string
;;       _send_char
;;         _delay
;;         _e_pulse
;;           _delay
;;     _uart_sendstr
;;       _uart_tx
;;     _send_char
;;       _delay
;;       _e_pulse
;;         _delay
;;     _uart_tx
;;     _send_dec
;;       ___lldiv
;;       ___llmod
;;       _lcd_goto
;;         _send_config
;;           _delay
;;           _e_pulse
;;             _delay
;;       _send_string
;;         _send_char
;;           _delay
;;           _e_pulse
;;             _delay
;;       _uart_sendstr
;;         _uart_tx
;;       _send_char
;;         _delay
;;         _e_pulse
;;           _delay
;;       _uart_tx
;;       _delay
;;     _switch_channel
;;       _lcd_clr
;;         _send_config
;;           _delay
;;           _e_pulse
;;             _delay
;;         _delay
;;       _send_string
;;         _send_char
;;           _delay
;;           _e_pulse
;;             _delay
;;       _uart_tx
;;       _uart_sendstr
;;         _uart_tx
;;       _send_char
;;         _delay
;;         _e_pulse
;;           _delay
;;       _eprom_read
;;       _setAR1000
;;         _ar_i2c_write
;;         _ar_i2c_read
;;         _delay
;;       _send_dec
;;         ___lldiv
;;         ___llmod
;;         _lcd_goto
;;           _send_config
;;             _delay
;;             _e_pulse
;;               _delay
;;         _send_string
;;           _send_char
;;             _delay
;;             _e_pulse
;;               _delay
;;         _uart_sendstr
;;           _uart_tx
;;         _send_char
;;           _delay
;;           _e_pulse
;;             _delay
;;         _uart_tx
;;         _delay
;;     _lcd_goto
;;       _send_config
;;         _delay
;;         _e_pulse
;;           _delay
;;     _adjust_vol
;;       _lcd_goto
;;         _send_config
;;           _delay
;;           _e_pulse
;;             _delay
;;       _send_char
;;         _delay
;;         _e_pulse
;;           _delay
;;       _uart_tx
;;       _delay
;;       _set_vol
;;         _ar_i2c_write
;;   _adjust_vol
;;     _lcd_goto
;;       _send_config
;;         _delay
;;         _e_pulse
;;           _delay
;;     _send_char
;;       _delay
;;       _e_pulse
;;         _delay
;;     _uart_tx
;;     _delay
;;     _set_vol
;;       _ar_i2c_write
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0      2E       7       57.5%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      8D      12        0.0%
;;ABS                  0      0      86       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       7       2        0.0%
;;BANK0               50     2C      4A       5       92.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 116 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  1277[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_delay
;;		_send_config
;;		_uart_init
;;		_ar_i2c_initialize
;;		_ar1000_init
;;		_send_string
;;		_lcd_goto
;;		_uart_sendstr
;;		_set_vol
;;		_lcd_clr
;;		_eeprom_read
;;		_eprom_write
;;		_switch_channel
;;		_adjust_channel
;;		_adjust_vol
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	116
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	118
	
l3818:	
;PR31_final.c: 118: delay(5000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	013h
	movwf	(?_delay+1)
	movlw	088h
	movwf	(?_delay)

	fcall	_delay
	line	120
	
l3820:	
;PR31_final.c: 120: TRISA = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	121
	
l3822:	
;PR31_final.c: 121: TRISB = 0b00001111;
	movlw	(0Fh)
	movwf	(134)^080h	;volatile
	line	122
	
l3824:	
;PR31_final.c: 122: TRISD = 0b00000000;
	clrf	(136)^080h	;volatile
	line	123
	
l3826:	
;PR31_final.c: 123: PORTA = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	124
	
l3828:	
;PR31_final.c: 124: PORTB = 0;
	clrf	(6)	;volatile
	line	125
	
l3830:	
;PR31_final.c: 125: PORTD = 0;
	clrf	(8)	;volatile
	line	129
;PR31_final.c: 129: send_config(0b00000001);
	movlw	(01h)
	fcall	_send_config
	line	130
;PR31_final.c: 130: send_config(0b00000010);
	movlw	(02h)
	fcall	_send_config
	line	131
;PR31_final.c: 131: send_config(0b00000110);
	movlw	(06h)
	fcall	_send_config
	line	132
;PR31_final.c: 132: send_config(0b00001100);
	movlw	(0Ch)
	fcall	_send_config
	line	133
;PR31_final.c: 133: send_config(0b00111000);
	movlw	(038h)
	fcall	_send_config
	line	136
;PR31_final.c: 136: uart_init();
	fcall	_uart_init
	line	137
;PR31_final.c: 137: ar_i2c_initialize();
	fcall	_ar_i2c_initialize
	line	138
	
l3832:	
;PR31_final.c: 138: ar1000_init();
	fcall	_ar1000_init
	line	140
	
l3834:	
;PR31_final.c: 140: send_string("PR31 :");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_send_string
	line	141
	
l3836:	
;PR31_final.c: 141: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	142
	
l3838:	
;PR31_final.c: 142: send_string("Digital Radio");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_send_string
	line	143
	
l3840:	
;PR31_final.c: 143: uart_sendstr("PR31 = Digital Radio");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_uart_sendstr
	line	144
	
l3842:	
;PR31_final.c: 144: set_vol(8);
	movlw	(08h)
	fcall	_set_vol
	line	145
	
l3844:	
;PR31_final.c: 145: delay(150000);
	movlw	0
	movwf	(?_delay+3)
	movlw	02h
	movwf	(?_delay+2)
	movlw	049h
	movwf	(?_delay+1)
	movlw	0F0h
	movwf	(?_delay)

	fcall	_delay
	line	147
	
l3846:	
;PR31_final.c: 147: lcd_clr();
	fcall	_lcd_clr
	line	148
;PR31_final.c: 148: send_string("sw1=chan sw2=vol");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_send_string
	line	149
;PR31_final.c: 149: uart_sendstr("sw1=chan sw2=vol");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_uart_sendstr
	line	150
	
l3848:	
;PR31_final.c: 150: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	151
	
l3850:	
;PR31_final.c: 151: send_string("sw1(1s)=set");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_send_string
	line	152
	
l3852:	
;PR31_final.c: 152: uart_sendstr("sw1(1s)=set");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_uart_sendstr
	line	155
	
l3854:	
;PR31_final.c: 155: for (i=1;i<7;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_i)
	bsf	status,0
	rlf	(_i),f
	
l3856:	
	movlw	(07h)
	subwf	(_i),w
	skipc
	goto	u4121
	goto	u4120
u4121:
	goto	l3860
u4120:
	goto	l1281
	
l3858:	
	goto	l1281
	line	156
	
l1278:	
	line	157
	
l3860:	
;PR31_final.c: 156: {
;PR31_final.c: 157: freq_kHz = eeprom_read(i);
	movf	(_i),w
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	((??_main+0)+0+1)
	clrf	((??_main+0)+0+2)
	clrf	((??_main+0)+0+3)
	movf	3+(??_main+0)+0,w
	movwf	(_freq_kHz+3)
	movf	2+(??_main+0)+0,w
	movwf	(_freq_kHz+2)
	movf	1+(??_main+0)+0,w
	movwf	(_freq_kHz+1)
	movf	0+(??_main+0)+0,w
	movwf	(_freq_kHz)

	line	158
	
l3862:	
;PR31_final.c: 158: if (freq_kHz==255)
	movlw	0
	xorwf	(_freq_kHz+3),w
	skipz
	goto	u4135
	movlw	0
	xorwf	(_freq_kHz+2),w
	skipz
	goto	u4135
	movlw	0
	xorwf	(_freq_kHz+1),w
	skipz
	goto	u4135
	movlw	0FFh
	xorwf	(_freq_kHz),w
u4135:
	skipz
	goto	u4131
	goto	u4130
u4131:
	goto	l3866
u4130:
	line	159
	
l3864:	
;PR31_final.c: 159: eprom_write (i,prog_chan[i]);
	movf	(_i),w
	addlw	_prog_chan&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_eprom_write)
	movf	1+(??_main+0)+0,w
	movwf	(?_eprom_write+1)
	movf	(_i),w
	fcall	_eprom_write
	goto	l3866
	
l1280:	
	line	155
	
l3866:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l3868:	
	movlw	(07h)
	subwf	(_i),w
	skipc
	goto	u4141
	goto	u4140
u4141:
	goto	l3860
u4140:
	goto	l1281
	
l1279:	
	line	162
;PR31_final.c: 160: }
;PR31_final.c: 162: while(1)
	
l1281:	
	line	165
;PR31_final.c: 163: {
;PR31_final.c: 165: if(RB0==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u4151
	goto	u4150
u4151:
	goto	l3874
u4150:
	goto	l1283
	line	167
	
l3870:	
;PR31_final.c: 166: {
;PR31_final.c: 167: while (RB0==0);
	goto	l1283
	
l1284:	
	
l1283:	
	btfss	(48/8),(48)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l1283
u4160:
	goto	l3872
	
l1285:	
	line	168
	
l3872:	
;PR31_final.c: 168: switch_channel();
	fcall	_switch_channel
	line	169
;PR31_final.c: 169: adjust_channel();
	fcall	_adjust_channel
	goto	l3874
	line	170
	
l1282:	
	line	172
	
l3874:	
;PR31_final.c: 170: }
;PR31_final.c: 172: if (RB1 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u4171
	goto	u4170
u4171:
	goto	l1281
u4170:
	goto	l1287
	line	174
	
l3876:	
;PR31_final.c: 173: {
;PR31_final.c: 174: while (RB1 == 0);
	goto	l1287
	
l1288:	
	
l1287:	
	btfss	(49/8),(49)&7
	goto	u4181
	goto	u4180
u4181:
	goto	l1287
u4180:
	goto	l3878
	
l1289:	
	line	175
	
l3878:	
;PR31_final.c: 175: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	176
	
l3880:	
;PR31_final.c: 176: send_string("volume level=   ");
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_send_string
	line	177
	
l3882:	
;PR31_final.c: 177: uart_sendstr("volume level=   ");
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_uart_sendstr
	line	178
	
l3884:	
;PR31_final.c: 178: m -= 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_m),f
	line	179
	
l3886:	
;PR31_final.c: 179: adjust_vol ();
	fcall	_adjust_vol
	goto	l1281
	line	180
	
l1286:	
	goto	l1281
	line	182
	
l1290:	
	line	162
	goto	l1281
	
l1291:	
	line	183
	
l1292:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_adjust_channel
psect	text607,local,class=CODE,delta=2
global __ptext607
__ptext607:

;; *************** function _adjust_channel *****************
;; Defined at:
;;		line 209 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  press           2   38[BANK0 ] unsigned int 
;;  press           2   36[BANK0 ] unsigned int 
;;  press           2   34[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_decrease_chan
;;		_delay
;;		_increase_chan
;;		_eprom_write
;;		_lcd_clr
;;		_send_string
;;		_uart_sendstr
;;		_send_char
;;		_uart_tx
;;		_send_dec
;;		_switch_channel
;;		_lcd_goto
;;		_adjust_vol
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text607
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	209
	global	__size_of_adjust_channel
	__size_of_adjust_channel	equ	__end_of_adjust_channel-_adjust_channel
	
_adjust_channel:	
	opt	stack 1
; Regs used in _adjust_channel: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	210
;PR31_final.c: 210: while(1)
	
l1299:	
	line	212
;PR31_final.c: 211: {
;PR31_final.c: 212: if (RB3 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(51/8),(51)&7
	goto	u4001
	goto	u4000
u4001:
	goto	l3760
u4000:
	line	214
	
l3746:	
;PR31_final.c: 213: {
;PR31_final.c: 214: unsigned int press=0;
	movlw	low(0)
	movwf	(adjust_channel@press)
	movlw	high(0)
	movwf	((adjust_channel@press))+1
	line	215
;PR31_final.c: 215: while (RB3==0)
	goto	l3754
	
l1302:	
	line	217
	
l3748:	
;PR31_final.c: 216: {
;PR31_final.c: 217: press += 1;
	movlw	low(01h)
	addwf	(adjust_channel@press),f
	skipnc
	incf	(adjust_channel@press+1),f
	movlw	high(01h)
	addwf	(adjust_channel@press+1),f
	line	218
;PR31_final.c: 218: if (press >= 650)
	movlw	high(028Ah)
	subwf	(adjust_channel@press+1),w
	movlw	low(028Ah)
	skipnz
	subwf	(adjust_channel@press),w
	skipc
	goto	u4011
	goto	u4010
u4011:
	goto	l3752
u4010:
	line	219
	
l3750:	
;PR31_final.c: 219: decrease_chan();
	fcall	_decrease_chan
	goto	l3752
	
l1303:	
	line	220
	
l3752:	
;PR31_final.c: 220: delay(100);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	064h
	movwf	(?_delay)

	fcall	_delay
	goto	l3754
	line	221
	
l1301:	
	line	215
	
l3754:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(51/8),(51)&7
	goto	u4021
	goto	u4020
u4021:
	goto	l3748
u4020:
	goto	l3756
	
l1304:	
	line	222
	
l3756:	
;PR31_final.c: 221: }
;PR31_final.c: 222: decrease_chan();
	fcall	_decrease_chan
	line	223
	
l3758:	
;PR31_final.c: 223: delay(1000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	03h
	movwf	(?_delay+1)
	movlw	0E8h
	movwf	(?_delay)

	fcall	_delay
	goto	l3760
	line	224
	
l1300:	
	line	226
	
l3760:	
;PR31_final.c: 224: }
;PR31_final.c: 226: if (RB2 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u4031
	goto	u4030
u4031:
	goto	l3776
u4030:
	line	228
	
l3762:	
;PR31_final.c: 227: {
;PR31_final.c: 228: unsigned int press=0;
	movlw	low(0)
	movwf	(adjust_channel@press_719)
	movlw	high(0)
	movwf	((adjust_channel@press_719))+1
	line	229
;PR31_final.c: 229: while (RB2==0)
	goto	l3770
	
l1307:	
	line	231
	
l3764:	
;PR31_final.c: 230: {
;PR31_final.c: 231: press += 1;
	movlw	low(01h)
	addwf	(adjust_channel@press_719),f
	skipnc
	incf	(adjust_channel@press_719+1),f
	movlw	high(01h)
	addwf	(adjust_channel@press_719+1),f
	line	232
;PR31_final.c: 232: if (press >= 650)
	movlw	high(028Ah)
	subwf	(adjust_channel@press_719+1),w
	movlw	low(028Ah)
	skipnz
	subwf	(adjust_channel@press_719),w
	skipc
	goto	u4041
	goto	u4040
u4041:
	goto	l3768
u4040:
	line	233
	
l3766:	
;PR31_final.c: 233: increase_chan();
	fcall	_increase_chan
	goto	l3768
	
l1308:	
	line	234
	
l3768:	
;PR31_final.c: 234: delay(100);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	064h
	movwf	(?_delay)

	fcall	_delay
	goto	l3770
	line	235
	
l1306:	
	line	229
	
l3770:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(50/8),(50)&7
	goto	u4051
	goto	u4050
u4051:
	goto	l3764
u4050:
	goto	l3772
	
l1309:	
	line	236
	
l3772:	
;PR31_final.c: 235: }
;PR31_final.c: 236: increase_chan();
	fcall	_increase_chan
	line	237
	
l3774:	
;PR31_final.c: 237: delay(1000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	03h
	movwf	(?_delay+1)
	movlw	0E8h
	movwf	(?_delay)

	fcall	_delay
	goto	l3776
	line	238
	
l1305:	
	line	240
	
l3776:	
;PR31_final.c: 238: }
;PR31_final.c: 240: if (RB0 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u4061
	goto	u4060
u4061:
	goto	l3804
u4060:
	line	241
	
l3778:	
;PR31_final.c: 241: { unsigned int press=0;
	movlw	low(0)
	movwf	(adjust_channel@press_720)
	movlw	high(0)
	movwf	((adjust_channel@press_720))+1
	line	242
;PR31_final.c: 242: while (RB0==0)
	goto	l3800
	
l1312:	
	line	244
	
l3780:	
;PR31_final.c: 243: {
;PR31_final.c: 244: press += 1;
	movlw	low(01h)
	addwf	(adjust_channel@press_720),f
	skipnc
	incf	(adjust_channel@press_720+1),f
	movlw	high(01h)
	addwf	(adjust_channel@press_720+1),f
	line	245
;PR31_final.c: 245: if (press >= 1300)
	movlw	high(0514h)
	subwf	(adjust_channel@press_720+1),w
	movlw	low(0514h)
	skipnz
	subwf	(adjust_channel@press_720),w
	skipc
	goto	u4071
	goto	u4070
u4071:
	goto	l3798
u4070:
	line	247
	
l3782:	
;PR31_final.c: 246: {
;PR31_final.c: 247: eprom_write(m,currentChannel);
	movf	(_currentChannel+1),w
	clrf	(?_eprom_write+1)
	addwf	(?_eprom_write+1)
	movf	(_currentChannel),w
	clrf	(?_eprom_write)
	addwf	(?_eprom_write)

	movf	(_m),w
	fcall	_eprom_write
	line	248
;PR31_final.c: 248: lcd_clr();
	fcall	_lcd_clr
	line	249
	
l3784:	
;PR31_final.c: 249: send_string("channel ");
	movlw	((STR_12-__stringbase))&0ffh
	fcall	_send_string
	line	250
	
l3786:	
;PR31_final.c: 250: uart_sendstr("channel ");
	movlw	((STR_13-__stringbase))&0ffh
	fcall	_uart_sendstr
	line	251
;PR31_final.c: 251: send_char(0x30+m);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_m),w
	addlw	030h
	fcall	_send_char
	line	252
;PR31_final.c: 252: uart_tx(0x30+m);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_m),w
	addlw	030h
	fcall	_uart_tx
	line	253
	
l3788:	
;PR31_final.c: 253: send_string(" setted");
	movlw	((STR_14-__stringbase))&0ffh
	fcall	_send_string
	line	254
	
l3790:	
;PR31_final.c: 254: uart_sendstr(" setted");
	movlw	((STR_15-__stringbase))&0ffh
	fcall	_uart_sendstr
	line	255
	
l3792:	
;PR31_final.c: 255: send_dec(currentChannel);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_currentChannel+3),w
	movwf	(?_send_dec+3)
	movf	(_currentChannel+2),w
	movwf	(?_send_dec+2)
	movf	(_currentChannel+1),w
	movwf	(?_send_dec+1)
	movf	(_currentChannel),w
	movwf	(?_send_dec)

	fcall	_send_dec
	line	256
;PR31_final.c: 256: while (RB0==0);
	goto	l1314
	
l1315:	
	
l1314:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u4081
	goto	u4080
u4081:
	goto	l1314
u4080:
	goto	l3794
	
l1316:	
	line	257
	
l3794:	
;PR31_final.c: 257: m -= 1;
	movlw	low(01h)
	subwf	(_m),f
	line	258
	
l3796:	
;PR31_final.c: 258: delay(2000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	07h
	movwf	(?_delay+1)
	movlw	0D0h
	movwf	(?_delay)

	fcall	_delay
	goto	l3798
	line	259
	
l1313:	
	line	260
	
l3798:	
;PR31_final.c: 259: }
;PR31_final.c: 260: delay(100);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	064h
	movwf	(?_delay)

	fcall	_delay
	goto	l3800
	line	262
	
l1311:	
	line	242
	
l3800:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u4091
	goto	u4090
u4091:
	goto	l3780
u4090:
	goto	l3802
	
l1317:	
	line	263
	
l3802:	
;PR31_final.c: 262: }
;PR31_final.c: 263: switch_channel();
	fcall	_switch_channel
	goto	l3804
	line	264
	
l1310:	
	line	266
	
l3804:	
;PR31_final.c: 264: }
;PR31_final.c: 266: if (RB1 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u4101
	goto	u4100
u4101:
	goto	l1299
u4100:
	goto	l1319
	line	268
	
l3806:	
;PR31_final.c: 267: {
;PR31_final.c: 268: while (RB1 == 0);
	goto	l1319
	
l1320:	
	
l1319:	
	btfss	(49/8),(49)&7
	goto	u4111
	goto	u4110
u4111:
	goto	l1319
u4110:
	goto	l3808
	
l1321:	
	line	269
	
l3808:	
;PR31_final.c: 269: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	270
	
l3810:	
;PR31_final.c: 270: send_string("volume level=   ");
	movlw	((STR_16-__stringbase))&0ffh
	fcall	_send_string
	line	271
	
l3812:	
;PR31_final.c: 271: uart_sendstr("volume level=   ");
	movlw	((STR_17-__stringbase))&0ffh
	fcall	_uart_sendstr
	line	272
	
l3814:	
;PR31_final.c: 272: m -= 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_m),f
	line	273
	
l3816:	
;PR31_final.c: 273: adjust_vol ();
	fcall	_adjust_vol
	goto	l1299
	line	274
	
l1318:	
	goto	l1299
	line	275
	
l1322:	
	line	210
	goto	l1299
	
l1323:	
	line	276
	
l1324:	
	return
	opt stack 0
GLOBAL	__end_of_adjust_channel
	__end_of_adjust_channel:
;; =============== function _adjust_channel ends ============

	signat	_adjust_channel,88
	global	_increase_chan
psect	text608,local,class=CODE,delta=2
global __ptext608
__ptext608:

;; *************** function _increase_chan *****************
;; Defined at:
;;		line 292 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setAR1000
;;		_uart_tx
;;		_uart_sendstr
;;		_send_dec
;;		_delay
;; This function is called by:
;;		_adjust_channel
;; This function uses a non-reentrant model
;;
psect	text608
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	292
	global	__size_of_increase_chan
	__size_of_increase_chan	equ	__end_of_increase_chan-_increase_chan
	
_increase_chan:	
	opt	stack 1
; Regs used in _increase_chan: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	293
	
l3730:	
;PR31_final.c: 293: currentChannel +=1;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_currentChannel),f
	movlw	0
	skipnc
movlw 1
	addwf	(_currentChannel+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(_currentChannel+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(_currentChannel+3),f
	line	294
;PR31_final.c: 294: if ( currentChannel >= 1080 )
	movlw	0
	subwf	(_currentChannel+3),w
	skipz
	goto	u3995
	movlw	0
	subwf	(_currentChannel+2),w
	skipz
	goto	u3995
	movlw	04h
	subwf	(_currentChannel+1),w
	skipz
	goto	u3995
	movlw	038h
	subwf	(_currentChannel),w
u3995:
	skipc
	goto	u3991
	goto	u3990
u3991:
	goto	l3734
u3990:
	line	295
	
l3732:	
;PR31_final.c: 295: currentChannel = 875;
	movlw	0
	movwf	(_currentChannel+3)
	movlw	0
	movwf	(_currentChannel+2)
	movlw	03h
	movwf	(_currentChannel+1)
	movlw	06Bh
	movwf	(_currentChannel)

	goto	l3734
	
l1331:	
	line	296
	
l3734:	
;PR31_final.c: 296: setAR1000 (currentChannel);
	movf	(_currentChannel+1),w
	clrf	(?_setAR1000+1)
	addwf	(?_setAR1000+1)
	movf	(_currentChannel),w
	clrf	(?_setAR1000)
	addwf	(?_setAR1000)

	fcall	_setAR1000
	line	297
	
l3736:	
;PR31_final.c: 297: uart_tx(0x0C);
	movlw	(0Ch)
	fcall	_uart_tx
	line	298
	
l3738:	
;PR31_final.c: 298: uart_sendstr("channel ");
	movlw	((STR_19-__stringbase))&0ffh
	fcall	_uart_sendstr
	line	299
	
l3740:	
;PR31_final.c: 299: uart_tx(0x30+m);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_m),w
	addlw	030h
	fcall	_uart_tx
	line	300
	
l3742:	
;PR31_final.c: 300: send_dec(currentChannel);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_currentChannel+3),w
	movwf	(?_send_dec+3)
	movf	(_currentChannel+2),w
	movwf	(?_send_dec+2)
	movf	(_currentChannel+1),w
	movwf	(?_send_dec+1)
	movf	(_currentChannel),w
	movwf	(?_send_dec)

	fcall	_send_dec
	line	301
	
l3744:	
;PR31_final.c: 301: delay(1500);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	05h
	movwf	(?_delay+1)
	movlw	0DCh
	movwf	(?_delay)

	fcall	_delay
	line	302
	
l1332:	
	return
	opt stack 0
GLOBAL	__end_of_increase_chan
	__end_of_increase_chan:
;; =============== function _increase_chan ends ============

	signat	_increase_chan,88
	global	_decrease_chan
psect	text609,local,class=CODE,delta=2
global __ptext609
__ptext609:

;; *************** function _decrease_chan *****************
;; Defined at:
;;		line 279 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_setAR1000
;;		_uart_tx
;;		_uart_sendstr
;;		_send_dec
;;		_delay
;; This function is called by:
;;		_adjust_channel
;; This function uses a non-reentrant model
;;
psect	text609
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	279
	global	__size_of_decrease_chan
	__size_of_decrease_chan	equ	__end_of_decrease_chan-_decrease_chan
	
_decrease_chan:	
	opt	stack 1
; Regs used in _decrease_chan: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	280
	
l3714:	
;PR31_final.c: 280: currentChannel -=1;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_decrease_chan+0)+0)
	movlw	0
	movwf	((??_decrease_chan+0)+0+1)
	movlw	0
	movwf	((??_decrease_chan+0)+0+2)
	movlw	0
	movwf	((??_decrease_chan+0)+0+3)
	movf	0+(??_decrease_chan+0)+0,w
	subwf	(_currentChannel),f
	movf	1+(??_decrease_chan+0)+0,w
	skipc
	incfsz	1+(??_decrease_chan+0)+0,w
	goto	u3975
	goto	u3976
u3975:
	subwf	(_currentChannel+1),f
u3976:
	movf	2+(??_decrease_chan+0)+0,w
	skipc
	incfsz	2+(??_decrease_chan+0)+0,w
	goto	u3977
	goto	u3978
u3977:
	subwf	(_currentChannel+2),f
u3978:
	movf	3+(??_decrease_chan+0)+0,w
	skipc
	incfsz	3+(??_decrease_chan+0)+0,w
	goto	u3979
	goto	u3970
u3979:
	subwf	(_currentChannel+3),f
u3970:

	line	281
;PR31_final.c: 281: if ( currentChannel <= 875 )
	movlw	0
	subwf	(_currentChannel+3),w
	skipz
	goto	u3985
	movlw	0
	subwf	(_currentChannel+2),w
	skipz
	goto	u3985
	movlw	03h
	subwf	(_currentChannel+1),w
	skipz
	goto	u3985
	movlw	06Ch
	subwf	(_currentChannel),w
u3985:
	skipnc
	goto	u3981
	goto	u3980
u3981:
	goto	l3718
u3980:
	line	282
	
l3716:	
;PR31_final.c: 282: currentChannel = 1080;
	movlw	0
	movwf	(_currentChannel+3)
	movlw	0
	movwf	(_currentChannel+2)
	movlw	04h
	movwf	(_currentChannel+1)
	movlw	038h
	movwf	(_currentChannel)

	goto	l3718
	
l1327:	
	line	283
	
l3718:	
;PR31_final.c: 283: setAR1000 (currentChannel);
	movf	(_currentChannel+1),w
	clrf	(?_setAR1000+1)
	addwf	(?_setAR1000+1)
	movf	(_currentChannel),w
	clrf	(?_setAR1000)
	addwf	(?_setAR1000)

	fcall	_setAR1000
	line	284
	
l3720:	
;PR31_final.c: 284: uart_tx(0x0C);
	movlw	(0Ch)
	fcall	_uart_tx
	line	285
	
l3722:	
;PR31_final.c: 285: uart_sendstr("channel ");
	movlw	((STR_18-__stringbase))&0ffh
	fcall	_uart_sendstr
	line	286
	
l3724:	
;PR31_final.c: 286: uart_tx(0x30+m);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_m),w
	addlw	030h
	fcall	_uart_tx
	line	287
	
l3726:	
;PR31_final.c: 287: send_dec(currentChannel);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_currentChannel+3),w
	movwf	(?_send_dec+3)
	movf	(_currentChannel+2),w
	movwf	(?_send_dec+2)
	movf	(_currentChannel+1),w
	movwf	(?_send_dec+1)
	movf	(_currentChannel),w
	movwf	(?_send_dec)

	fcall	_send_dec
	line	288
	
l3728:	
;PR31_final.c: 288: delay(1500);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	05h
	movwf	(?_delay+1)
	movlw	0DCh
	movwf	(?_delay)

	fcall	_delay
	line	289
	
l1328:	
	return
	opt stack 0
GLOBAL	__end_of_decrease_chan
	__end_of_decrease_chan:
;; =============== function _decrease_chan ends ============

	signat	_decrease_chan,88
	global	_switch_channel
psect	text610,local,class=CODE,delta=2
global __ptext610
__ptext610:

;; *************** function _switch_channel *****************
;; Defined at:
;;		line 192 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_clr
;;		_send_string
;;		_uart_tx
;;		_uart_sendstr
;;		_send_char
;;		_eprom_read
;;		_setAR1000
;;		_send_dec
;; This function is called by:
;;		_main
;;		_adjust_channel
;; This function uses a non-reentrant model
;;
psect	text610
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	192
	global	__size_of_switch_channel
	__size_of_switch_channel	equ	__end_of_switch_channel-_switch_channel
	
_switch_channel:	
	opt	stack 1
; Regs used in _switch_channel: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	193
	
l3690:	
;PR31_final.c: 193: m++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_switch_channel+0)+0
	movf	(??_switch_channel+0)+0,w
	addwf	(_m),f
	line	194
	
l3692:	
;PR31_final.c: 194: if ( m > 6) m = 1;
	movlw	(07h)
	subwf	(_m),w
	skipc
	goto	u3961
	goto	u3960
u3961:
	goto	l3696
u3960:
	
l3694:	
	clrf	(_m)
	bsf	status,0
	rlf	(_m),f
	goto	l3696
	
l1295:	
	line	196
	
l3696:	
;PR31_final.c: 196: lcd_clr();
	fcall	_lcd_clr
	line	197
	
l3698:	
;PR31_final.c: 197: send_string("channel ");
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_send_string
	line	198
	
l3700:	
;PR31_final.c: 198: uart_tx(0x0C);
	movlw	(0Ch)
	fcall	_uart_tx
	line	199
	
l3702:	
;PR31_final.c: 199: uart_sendstr("Channel ");
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_uart_sendstr
	line	200
	
l3704:	
;PR31_final.c: 200: send_char(0x30+m);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_m),w
	addlw	030h
	fcall	_send_char
	line	201
	
l3706:	
;PR31_final.c: 201: uart_tx(0x30+m);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_m),w
	addlw	030h
	fcall	_uart_tx
	line	202
	
l3708:	
;PR31_final.c: 202: currentChannel = eprom_read(m);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_m),w
	fcall	_eprom_read
	movf	(0+(?_eprom_read)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_currentChannel)
	movf	(1+(?_eprom_read)),w
	movwf	((_currentChannel))+1
	clrf	2+((_currentChannel))
	clrf	3+((_currentChannel))
	line	203
	
l3710:	
;PR31_final.c: 203: setAR1000(currentChannel);
	movf	(_currentChannel+1),w
	clrf	(?_setAR1000+1)
	addwf	(?_setAR1000+1)
	movf	(_currentChannel),w
	clrf	(?_setAR1000)
	addwf	(?_setAR1000)

	fcall	_setAR1000
	line	204
	
l3712:	
;PR31_final.c: 204: send_dec(currentChannel);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_currentChannel+3),w
	movwf	(?_send_dec+3)
	movf	(_currentChannel+2),w
	movwf	(?_send_dec+2)
	movf	(_currentChannel+1),w
	movwf	(?_send_dec+1)
	movf	(_currentChannel),w
	movwf	(?_send_dec)

	fcall	_send_dec
	line	205
	
l1296:	
	return
	opt stack 0
GLOBAL	__end_of_switch_channel
	__end_of_switch_channel:
;; =============== function _switch_channel ends ============

	signat	_switch_channel,88
	global	_send_dec
psect	text611,local,class=CODE,delta=2
global __ptext611
__ptext611:

;; *************** function _send_dec *****************
;; Defined at:
;;		line 305 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;  RC4             4    0[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  no             20    8[BANK0 ] unsigned long [5]
;;  i               2   28[BANK0 ] unsigned short 
;;  press           2    0        unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0      22       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      30       0       0       0
;;Total ram usage:       30 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lldiv
;;		___llmod
;;		_lcd_goto
;;		_send_string
;;		_uart_sendstr
;;		_send_char
;;		_uart_tx
;;		_delay
;; This function is called by:
;;		_switch_channel
;;		_adjust_channel
;;		_decrease_chan
;;		_increase_chan
;; This function uses a non-reentrant model
;;
psect	text611
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	305
	global	__size_of_send_dec
	__size_of_send_dec	equ	__end_of_send_dec-_send_dec
	
_send_dec:	
	opt	stack 1
; Regs used in _send_dec: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	308
	
l3664:	
;PR31_final.c: 306: unsigned int press;
;PR31_final.c: 307: unsigned short i;
;PR31_final.c: 308: no[0]=(RC4/1000+0x30);
	movlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_send_dec+0)+0)
	movlw	0
	movwf	((??_send_dec+0)+0+1)
	movlw	0
	movwf	((??_send_dec+0)+0+2)
	movlw	0
	movwf	((??_send_dec+0)+0+3)
	movlw	0
	movwf	(?___lldiv+3)
	movlw	0
	movwf	(?___lldiv+2)
	movlw	03h
	movwf	(?___lldiv+1)
	movlw	0E8h
	movwf	(?___lldiv)

	movf	(send_dec@RC4+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@RC4+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@RC4+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@RC4),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(0+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(??_send_dec+0)+0,f
	movf	(1+(?___lldiv)),w
	skipnc
	incfsz	(1+(?___lldiv)),w
	goto	u3880
	goto	u3881
u3880:
	addwf	(??_send_dec+0)+1,f
u3881:
	movf	(2+(?___lldiv)),w
	skipnc
	incfsz	(2+(?___lldiv)),w
	goto	u3882
	goto	u3883
u3882:
	addwf	(??_send_dec+0)+2,f
u3883:
	movf	(3+(?___lldiv)),w
	skipnc
	incf	(3+(?___lldiv)),w
	addwf	(??_send_dec+0)+3,f
	movf	3+(??_send_dec+0)+0,w
	movwf	(send_dec@no+3)
	movf	2+(??_send_dec+0)+0,w
	movwf	(send_dec@no+2)
	movf	1+(??_send_dec+0)+0,w
	movwf	(send_dec@no+1)
	movf	0+(??_send_dec+0)+0,w
	movwf	(send_dec@no)

	line	309
;PR31_final.c: 309: RC4=RC4%1000;
	movlw	0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	03h
	movwf	(?___llmod+1)
	movlw	0E8h
	movwf	(?___llmod)

	movf	(send_dec@RC4+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@RC4+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@RC4+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@RC4),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@RC4+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@RC4+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@RC4+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@RC4)

	line	310
;PR31_final.c: 310: no[1]=(RC4/100+0x30);
	movlw	030h
	movwf	((??_send_dec+0)+0)
	movlw	0
	movwf	((??_send_dec+0)+0+1)
	movlw	0
	movwf	((??_send_dec+0)+0+2)
	movlw	0
	movwf	((??_send_dec+0)+0+3)
	movlw	0
	movwf	(?___lldiv+3)
	movlw	0
	movwf	(?___lldiv+2)
	movlw	0
	movwf	(?___lldiv+1)
	movlw	064h
	movwf	(?___lldiv)

	movf	(send_dec@RC4+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@RC4+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@RC4+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@RC4),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(0+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(??_send_dec+0)+0,f
	movf	(1+(?___lldiv)),w
	skipnc
	incfsz	(1+(?___lldiv)),w
	goto	u3890
	goto	u3891
u3890:
	addwf	(??_send_dec+0)+1,f
u3891:
	movf	(2+(?___lldiv)),w
	skipnc
	incfsz	(2+(?___lldiv)),w
	goto	u3892
	goto	u3893
u3892:
	addwf	(??_send_dec+0)+2,f
u3893:
	movf	(3+(?___lldiv)),w
	skipnc
	incf	(3+(?___lldiv)),w
	addwf	(??_send_dec+0)+3,f
	movf	3+(??_send_dec+0)+0,w
	movwf	3+(send_dec@no)+04h
	movf	2+(??_send_dec+0)+0,w
	movwf	2+(send_dec@no)+04h
	movf	1+(??_send_dec+0)+0,w
	movwf	1+(send_dec@no)+04h
	movf	0+(??_send_dec+0)+0,w
	movwf	0+(send_dec@no)+04h

	line	311
;PR31_final.c: 311: RC4=RC4%100;
	movlw	0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	0
	movwf	(?___llmod+1)
	movlw	064h
	movwf	(?___llmod)

	movf	(send_dec@RC4+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@RC4+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@RC4+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@RC4),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@RC4+3)
	movf	(2+(?___llmod)),w
	movwf	(send_dec@RC4+2)
	movf	(1+(?___llmod)),w
	movwf	(send_dec@RC4+1)
	movf	(0+(?___llmod)),w
	movwf	(send_dec@RC4)

	line	312
;PR31_final.c: 312: no[2]=(RC4/10+0x30);
	movlw	030h
	movwf	((??_send_dec+0)+0)
	movlw	0
	movwf	((??_send_dec+0)+0+1)
	movlw	0
	movwf	((??_send_dec+0)+0+2)
	movlw	0
	movwf	((??_send_dec+0)+0+3)
	movlw	0
	movwf	(?___lldiv+3)
	movlw	0
	movwf	(?___lldiv+2)
	movlw	0
	movwf	(?___lldiv+1)
	movlw	0Ah
	movwf	(?___lldiv)

	movf	(send_dec@RC4+3),w
	movwf	3+(?___lldiv)+04h
	movf	(send_dec@RC4+2),w
	movwf	2+(?___lldiv)+04h
	movf	(send_dec@RC4+1),w
	movwf	1+(?___lldiv)+04h
	movf	(send_dec@RC4),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	(0+(?___lldiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(??_send_dec+0)+0,f
	movf	(1+(?___lldiv)),w
	skipnc
	incfsz	(1+(?___lldiv)),w
	goto	u3900
	goto	u3901
u3900:
	addwf	(??_send_dec+0)+1,f
u3901:
	movf	(2+(?___lldiv)),w
	skipnc
	incfsz	(2+(?___lldiv)),w
	goto	u3902
	goto	u3903
u3902:
	addwf	(??_send_dec+0)+2,f
u3903:
	movf	(3+(?___lldiv)),w
	skipnc
	incf	(3+(?___lldiv)),w
	addwf	(??_send_dec+0)+3,f
	movf	3+(??_send_dec+0)+0,w
	movwf	3+(send_dec@no)+08h
	movf	2+(??_send_dec+0)+0,w
	movwf	2+(send_dec@no)+08h
	movf	1+(??_send_dec+0)+0,w
	movwf	1+(send_dec@no)+08h
	movf	0+(??_send_dec+0)+0,w
	movwf	0+(send_dec@no)+08h

	line	313
	
l3666:	
;PR31_final.c: 313: no[3]=0x2E;
	movlw	0
	movwf	3+(send_dec@no)+0Ch
	movlw	0
	movwf	2+(send_dec@no)+0Ch
	movlw	0
	movwf	1+(send_dec@no)+0Ch
	movlw	02Eh
	movwf	0+(send_dec@no)+0Ch

	line	314
	
l3668:	
;PR31_final.c: 314: no[4]=(RC4%10+0x30);
	movlw	030h
	movwf	((??_send_dec+0)+0)
	movlw	0
	movwf	((??_send_dec+0)+0+1)
	movlw	0
	movwf	((??_send_dec+0)+0+2)
	movlw	0
	movwf	((??_send_dec+0)+0+3)
	movlw	0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	0
	movwf	(?___llmod+1)
	movlw	0Ah
	movwf	(?___llmod)

	movf	(send_dec@RC4+3),w
	movwf	3+(?___llmod)+04h
	movf	(send_dec@RC4+2),w
	movwf	2+(?___llmod)+04h
	movf	(send_dec@RC4+1),w
	movwf	1+(?___llmod)+04h
	movf	(send_dec@RC4),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	(0+(?___llmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(??_send_dec+0)+0,f
	movf	(1+(?___llmod)),w
	skipnc
	incfsz	(1+(?___llmod)),w
	goto	u3910
	goto	u3911
u3910:
	addwf	(??_send_dec+0)+1,f
u3911:
	movf	(2+(?___llmod)),w
	skipnc
	incfsz	(2+(?___llmod)),w
	goto	u3912
	goto	u3913
u3912:
	addwf	(??_send_dec+0)+2,f
u3913:
	movf	(3+(?___llmod)),w
	skipnc
	incf	(3+(?___llmod)),w
	addwf	(??_send_dec+0)+3,f
	movf	3+(??_send_dec+0)+0,w
	movwf	3+(send_dec@no)+010h
	movf	2+(??_send_dec+0)+0,w
	movwf	2+(send_dec@no)+010h
	movf	1+(??_send_dec+0)+0,w
	movwf	1+(send_dec@no)+010h
	movf	0+(??_send_dec+0)+0,w
	movwf	0+(send_dec@no)+010h

	line	315
	
l3670:	
;PR31_final.c: 315: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	316
	
l3672:	
;PR31_final.c: 316: send_string("FM=");
	movlw	((STR_20-__stringbase))&0ffh
	fcall	_send_string
	line	317
	
l3674:	
;PR31_final.c: 317: uart_sendstr("FM=");
	movlw	((STR_21-__stringbase))&0ffh
	fcall	_uart_sendstr
	line	318
	
l3676:	
;PR31_final.c: 318: for (i=0;i<5;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_dec@i)
	movlw	high(0)
	movwf	((send_dec@i))+1
	
l3678:	
	movlw	high(05h)
	subwf	(send_dec@i+1),w
	movlw	low(05h)
	skipnz
	subwf	(send_dec@i),w
	skipc
	goto	u3921
	goto	u3920
u3921:
	goto	l3682
u3920:
	goto	l3688
	
l3680:	
	goto	l3688
	line	319
	
l1335:	
	line	320
	
l3682:	
;PR31_final.c: 319: {
;PR31_final.c: 320: send_char(no[i]);
	movf	(send_dec@i),w
	movwf	(??_send_dec+0)+0
	movlw	(02h)-1
u3935:
	clrc
	rlf	(??_send_dec+0)+0,f
	addlw	-1
	skipz
	goto	u3935
	clrc
	rlf	(??_send_dec+0)+0,w
	addlw	send_dec@no&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_send_char
	line	321
;PR31_final.c: 321: uart_tx(no[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(send_dec@i),w
	movwf	(??_send_dec+0)+0
	movlw	(02h)-1
u3945:
	clrc
	rlf	(??_send_dec+0)+0,f
	addlw	-1
	skipz
	goto	u3945
	clrc
	rlf	(??_send_dec+0)+0,w
	addlw	send_dec@no&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_uart_tx
	line	318
	
l3684:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(send_dec@i),f
	skipnc
	incf	(send_dec@i+1),f
	movlw	high(01h)
	addwf	(send_dec@i+1),f
	
l3686:	
	movlw	high(05h)
	subwf	(send_dec@i+1),w
	movlw	low(05h)
	skipnz
	subwf	(send_dec@i),w
	skipc
	goto	u3951
	goto	u3950
u3951:
	goto	l3682
u3950:
	goto	l3688
	
l1336:	
	line	323
	
l3688:	
;PR31_final.c: 322: }
;PR31_final.c: 323: delay(1000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	03h
	movwf	(?_delay+1)
	movlw	0E8h
	movwf	(?_delay)

	fcall	_delay
	line	324
	
l1337:	
	return
	opt stack 0
GLOBAL	__end_of_send_dec
	__end_of_send_dec:
;; =============== function _send_dec ends ============

	signat	_send_dec,4216
	global	_adjust_vol
psect	text612,local,class=CODE,delta=2
global __ptext612
__ptext612:

;; *************** function _adjust_vol *****************
;; Defined at:
;;		line 344 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  vol_default     1    6[BANK0 ] unsigned char 
;;  check           1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_goto
;;		_send_char
;;		_uart_tx
;;		_delay
;;		_set_vol
;; This function is called by:
;;		_main
;;		_adjust_channel
;; This function uses a non-reentrant model
;;
psect	text612
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	344
	global	__size_of_adjust_vol
	__size_of_adjust_vol	equ	__end_of_adjust_vol-_adjust_vol
	
_adjust_vol:	
	opt	stack 3
; Regs used in _adjust_vol: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	346
;PR31_final.c: 346: while (1){
	
l1343:	
	line	347
	
l3616:	
;PR31_final.c: 347: check = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(adjust_vol@check)
	line	348
	
l3618:	
;PR31_final.c: 348: lcd_goto(13);
	movlw	(0Dh)
	fcall	_lcd_goto
	line	349
	
l3620:	
;PR31_final.c: 349: vol_default = vol;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vol),w
	movwf	(??_adjust_vol+0)+0
	movf	(??_adjust_vol+0)+0,w
	movwf	(adjust_vol@vol_default)
	line	350
	
l3622:	
;PR31_final.c: 350: send_char(0x30+vol);
	movf	(_vol),w
	addlw	030h
	fcall	_send_char
	line	351
	
l3624:	
;PR31_final.c: 351: uart_tx(0x30+vol);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_vol),w
	addlw	030h
	fcall	_uart_tx
	line	352
	
l3626:	
;PR31_final.c: 352: delay(10);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0Ah
	movwf	(?_delay)

	fcall	_delay
	line	355
;PR31_final.c: 355: while(check==0)
	goto	l3660
	
l1345:	
	line	357
;PR31_final.c: 356: {
;PR31_final.c: 357: if (RB3 == 0)
	btfsc	(51/8),(51)&7
	goto	u3801
	goto	u3800
u3801:
	goto	l3640
u3800:
	goto	l1347
	line	359
	
l3628:	
;PR31_final.c: 358: {
;PR31_final.c: 359: while (RB3==0);
	goto	l1347
	
l1348:	
	
l1347:	
	btfss	(51/8),(51)&7
	goto	u3811
	goto	u3810
u3811:
	goto	l1347
u3810:
	goto	l3630
	
l1349:	
	line	360
	
l3630:	
;PR31_final.c: 360: vol -=1;
	movlw	low(01h)
	subwf	(_vol),f
	line	361
	
l3632:	
;PR31_final.c: 361: if ( vol <= 1 )
	movlw	(02h)
	subwf	(_vol),w
	skipnc
	goto	u3821
	goto	u3820
u3821:
	goto	l3636
u3820:
	line	362
	
l3634:	
;PR31_final.c: 362: vol = 1;
	clrf	(_vol)
	bsf	status,0
	rlf	(_vol),f
	goto	l3636
	
l1350:	
	line	363
	
l3636:	
;PR31_final.c: 363: set_vol (vol);
	movf	(_vol),w
	fcall	_set_vol
	line	364
	
l3638:	
;PR31_final.c: 364: delay(100);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	064h
	movwf	(?_delay)

	fcall	_delay
	goto	l3640
	line	365
	
l1346:	
	line	367
	
l3640:	
;PR31_final.c: 365: }
;PR31_final.c: 367: if (RB2 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(50/8),(50)&7
	goto	u3831
	goto	u3830
u3831:
	goto	l3654
u3830:
	goto	l1352
	line	369
	
l3642:	
;PR31_final.c: 368: {
;PR31_final.c: 369: while (RB2==0);
	goto	l1352
	
l1353:	
	
l1352:	
	btfss	(50/8),(50)&7
	goto	u3841
	goto	u3840
u3841:
	goto	l1352
u3840:
	goto	l3644
	
l1354:	
	line	370
	
l3644:	
;PR31_final.c: 370: vol +=1;
	movlw	(01h)
	movwf	(??_adjust_vol+0)+0
	movf	(??_adjust_vol+0)+0,w
	addwf	(_vol),f
	line	371
	
l3646:	
;PR31_final.c: 371: if (vol >= 9)
	movlw	(09h)
	subwf	(_vol),w
	skipc
	goto	u3851
	goto	u3850
u3851:
	goto	l3650
u3850:
	line	372
	
l3648:	
;PR31_final.c: 372: vol = 9;
	movlw	(09h)
	movwf	(??_adjust_vol+0)+0
	movf	(??_adjust_vol+0)+0,w
	movwf	(_vol)
	goto	l3650
	
l1355:	
	line	373
	
l3650:	
;PR31_final.c: 373: set_vol (vol);
	movf	(_vol),w
	fcall	_set_vol
	line	374
	
l3652:	
;PR31_final.c: 374: delay(100);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	064h
	movwf	(?_delay)

	fcall	_delay
	goto	l3654
	line	375
	
l1351:	
	line	377
	
l3654:	
;PR31_final.c: 375: }
;PR31_final.c: 377: if (RB0==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u3861
	goto	u3860
u3861:
	goto	l3658
u3860:
	goto	l1357
	line	379
	
l3656:	
;PR31_final.c: 378: {
;PR31_final.c: 379: return;
	goto	l1357
	line	380
	
l1356:	
	line	382
	
l3658:	
;PR31_final.c: 380: }
;PR31_final.c: 382: check = vol & ~(vol_default);
	comf	(adjust_vol@vol_default),w
	andwf	(_vol),w
	movwf	(??_adjust_vol+0)+0
	movf	(??_adjust_vol+0)+0,w
	movwf	(adjust_vol@check)
	line	383
;PR31_final.c: 383: check |= ~vol & vol_default;
	comf	(_vol),w
	andwf	(adjust_vol@vol_default),w
	movwf	(??_adjust_vol+0)+0
	movf	(??_adjust_vol+0)+0,w
	iorwf	(adjust_vol@check),f
	goto	l3660
	line	385
	
l1344:	
	line	355
	
l3660:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adjust_vol@check),w
	skipz
	goto	u3870
	goto	l1345
u3870:
	goto	l3662
	
l1358:	
	line	386
	
l3662:	
;PR31_final.c: 385: }
;PR31_final.c: 386: uart_tx(0x08);
	movlw	(08h)
	fcall	_uart_tx
	goto	l1343
	line	387
	
l1359:	
	line	346
	goto	l1343
	
l1360:	
	line	388
	
l1357:	
	return
	opt stack 0
GLOBAL	__end_of_adjust_vol
	__end_of_adjust_vol:
;; =============== function _adjust_vol ends ============

	signat	_adjust_vol,88
	global	_lcd_clr
psect	text613,local,class=CODE,delta=2
global __ptext613
__ptext613:

;; *************** function _lcd_clr *****************
;; Defined at:
;;		line 500 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_send_config
;;		_delay
;; This function is called by:
;;		_main
;;		_switch_channel
;;		_adjust_channel
;; This function uses a non-reentrant model
;;
psect	text613
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	500
	global	__size_of_lcd_clr
	__size_of_lcd_clr	equ	__end_of_lcd_clr-_lcd_clr
	
_lcd_clr:	
	opt	stack 2
; Regs used in _lcd_clr: [wreg+status,2+status,0+pclath+cstack]
	line	501
	
l3614:	
;PR31_final.c: 501: send_config(0b00000001);
	movlw	(01h)
	fcall	_send_config
	line	502
;PR31_final.c: 502: send_config(0b00000010);
	movlw	(02h)
	fcall	_send_config
	line	503
;PR31_final.c: 503: delay(350);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	01h
	movwf	(?_delay+1)
	movlw	05Eh
	movwf	(?_delay)

	fcall	_delay
	line	504
	
l1396:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clr
	__end_of_lcd_clr:
;; =============== function _lcd_clr ends ============

	signat	_lcd_clr,88
	global	_lcd_goto
psect	text614,local,class=CODE,delta=2
global __ptext614
__ptext614:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 488 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;  RC4             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  RC4             1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_send_config
;; This function is called by:
;;		_main
;;		_adjust_channel
;;		_send_dec
;;		_adjust_vol
;; This function uses a non-reentrant model
;;
psect	text614
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	488
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 3
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@RC4 stored from wreg
	movwf	(lcd_goto@RC4)
	line	489
	
l3606:	
;PR31_final.c: 489: if(RC4<16)
	movlw	(010h)
	subwf	(lcd_goto@RC4),w
	skipnc
	goto	u3791
	goto	u3790
u3791:
	goto	l3610
u3790:
	line	491
	
l3608:	
;PR31_final.c: 490: {
;PR31_final.c: 491: send_config(0x80+RC4);
	movf	(lcd_goto@RC4),w
	addlw	080h
	fcall	_send_config
	line	492
;PR31_final.c: 492: }
	goto	l1393
	line	493
	
l1391:	
	line	495
	
l3610:	
;PR31_final.c: 493: else
;PR31_final.c: 494: {
;PR31_final.c: 495: RC4=RC4-20;
	movf	(lcd_goto@RC4),w
	addlw	0ECh
	movwf	(??_lcd_goto+0)+0
	movf	(??_lcd_goto+0)+0,w
	movwf	(lcd_goto@RC4)
	line	496
	
l3612:	
;PR31_final.c: 496: send_config(0xc0+RC4);
	movf	(lcd_goto@RC4),w
	addlw	0C0h
	fcall	_send_config
	goto	l1393
	line	497
	
l1392:	
	line	498
	
l1393:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_send_string
psect	text615,local,class=CODE,delta=2
global __ptext615
__ptext615:

;; *************** function _send_string *****************
;; Defined at:
;;		line 506 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_20(4), STR_16(17), STR_14(8), STR_12(9), 
;;		 -> STR_10(9), STR_8(17), STR_6(12), STR_4(17), 
;;		 -> STR_2(14), STR_1(7), 
;; Auto vars:     Size  Location     Type
;;  s               1   11[COMMON] PTR const unsigned char 
;;		 -> STR_20(4), STR_16(17), STR_14(8), STR_12(9), 
;;		 -> STR_10(9), STR_8(17), STR_6(12), STR_4(17), 
;;		 -> STR_2(14), STR_1(7), 
;;  i               1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_send_char
;; This function is called by:
;;		_main
;;		_switch_channel
;;		_adjust_channel
;;		_send_dec
;; This function uses a non-reentrant model
;;
psect	text615
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	506
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 1
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	507
	
l3596:	
;PR31_final.c: 507: unsigned char i=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(send_string@i)
	line	508
;PR31_final.c: 508: while (s && *s)send_char (*s++);
	goto	l3602
	
l1400:	
	
l3598:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_send_char
	
l3600:	
	movlw	(01h)
	movwf	(??_send_string+0)+0
	movf	(??_send_string+0)+0,w
	addwf	(send_string@s),f
	goto	l3602
	
l1399:	
	
l3602:	
	movf	(send_string@s),w
	skipz
	goto	u3770
	goto	l1404
u3770:
	
l3604:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3781
	goto	u3780
u3781:
	goto	l3598
u3780:
	goto	l1404
	
l1402:	
	goto	l1404
	
l1403:	
	line	509
	
l1404:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_send_char
psect	text616,local,class=CODE,delta=2
global __ptext616
__ptext616:

;; *************** function _send_char *****************
;; Defined at:
;;		line 474 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;  RC4             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  RC4             1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_e_pulse
;; This function is called by:
;;		_switch_channel
;;		_adjust_channel
;;		_send_dec
;;		_adjust_vol
;;		_send_string
;; This function uses a non-reentrant model
;;
psect	text616
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	474
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 4
; Regs used in _send_char: [wreg+status,2+status,0+pclath+cstack]
;send_char@RC4 stored from wreg
	movwf	(send_char@RC4)
	line	475
	
l3588:	
;PR31_final.c: 475: RB4=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	line	476
	
l3590:	
;PR31_final.c: 476: PORTD=RC4;
	movf	(send_char@RC4),w
	movwf	(8)	;volatile
	line	477
	
l3592:	
;PR31_final.c: 477: delay(300);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	01h
	movwf	(?_delay+1)
	movlw	02Ch
	movwf	(?_delay)

	fcall	_delay
	line	478
	
l3594:	
;PR31_final.c: 478: e_pulse();
	fcall	_e_pulse
	line	479
	
l1385:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_send_config
psect	text617,local,class=CODE,delta=2
global __ptext617
__ptext617:

;; *************** function _send_config *****************
;; Defined at:
;;		line 467 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;  RC4             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  RC4             1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_e_pulse
;; This function is called by:
;;		_main
;;		_lcd_goto
;;		_lcd_clr
;; This function uses a non-reentrant model
;;
psect	text617
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	467
	global	__size_of_send_config
	__size_of_send_config	equ	__end_of_send_config-_send_config
	
_send_config:	
	opt	stack 3
; Regs used in _send_config: [wreg+status,2+status,0+pclath+cstack]
;send_config@RC4 stored from wreg
	movwf	(send_config@RC4)
	line	468
	
l3580:	
;PR31_final.c: 468: RB4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
	line	469
	
l3582:	
;PR31_final.c: 469: PORTD=RC4;
	movf	(send_config@RC4),w
	movwf	(8)	;volatile
	line	470
	
l3584:	
;PR31_final.c: 470: delay(300);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	01h
	movwf	(?_delay+1)
	movlw	02Ch
	movwf	(?_delay)

	fcall	_delay
	line	471
	
l3586:	
;PR31_final.c: 471: e_pulse();
	fcall	_e_pulse
	line	472
	
l1382:	
	return
	opt stack 0
GLOBAL	__end_of_send_config
	__end_of_send_config:
;; =============== function _send_config ends ============

	signat	_send_config,4216
	global	_e_pulse
psect	text618,local,class=CODE,delta=2
global __ptext618
__ptext618:

;; *************** function _e_pulse *****************
;; Defined at:
;;		line 481 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_send_config
;;		_send_char
;; This function uses a non-reentrant model
;;
psect	text618
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	481
	global	__size_of_e_pulse
	__size_of_e_pulse	equ	__end_of_e_pulse-_e_pulse
	
_e_pulse:	
	opt	stack 4
; Regs used in _e_pulse: [wreg+status,2+status,0+pclath+cstack]
	line	482
	
l3574:	
;PR31_final.c: 482: RB5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	line	483
	
l3576:	
;PR31_final.c: 483: delay(300);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	01h
	movwf	(?_delay+1)
	movlw	02Ch
	movwf	(?_delay)

	fcall	_delay
	line	484
	
l3578:	
;PR31_final.c: 484: RB5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
	line	485
;PR31_final.c: 485: delay(300);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	01h
	movwf	(?_delay+1)
	movlw	02Ch
	movwf	(?_delay)

	fcall	_delay
	line	486
	
l1388:	
	return
	opt stack 0
GLOBAL	__end_of_e_pulse
	__end_of_e_pulse:
;; =============== function _e_pulse ends ============

	signat	_e_pulse,88
	global	_setAR1000
psect	text619,local,class=CODE,delta=2
global __ptext619
__ptext619:

;; *************** function _setAR1000 *****************
;; Defined at:
;;		line 416 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;  freq_kHz        2    9[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ar_i2c_write
;;		_ar_i2c_read
;;		_delay
;; This function is called by:
;;		_switch_channel
;;		_decrease_chan
;;		_increase_chan
;; This function uses a non-reentrant model
;;
psect	text619
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	416
	global	__size_of_setAR1000
	__size_of_setAR1000	equ	__end_of_setAR1000-_setAR1000
	
_setAR1000:	
	opt	stack 4
; Regs used in _setAR1000: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	417
	
l3538:	
;PR31_final.c: 417: freq_kHz -= 690;
	movlw	low(02B2h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(setAR1000@freq_kHz),f
	movlw	high(02B2h)
	skipc
	decf	(setAR1000@freq_kHz+1),f
	subwf	(setAR1000@freq_kHz+1),f
	line	419
	
l3540:	
;PR31_final.c: 419: register_values[1] |= (1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	0+(_register_values)^080h+02h+(1/8),(1)&7
	line	420
	
l3542:	
;PR31_final.c: 420: ar_i2c_write(0x20, 1, register_values[1]);
	clrf	(?_ar_i2c_write)
	bsf	status,0
	rlf	(?_ar_i2c_write),f
	movf	0+(_register_values)^080h+02h,w
	movwf	0+(?_ar_i2c_write)+01h
	movf	1+(_register_values)^080h+02h,w
	movwf	(0+(?_ar_i2c_write)+01h)+1
	clrf	2+(0+(?_ar_i2c_write)+01h)
	clrf	3+(0+(?_ar_i2c_write)+01h)
	movlw	(020h)
	fcall	_ar_i2c_write
	line	423
	
l3544:	
;PR31_final.c: 423: register_values[2] &= ~(0x01FF | 0x0200);
	movlw	low(0FC00h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	0+(_register_values)^080h+04h,f
	movlw	high(0FC00h)
	andwf	1+(_register_values)^080h+04h,f
	line	424
;PR31_final.c: 424: ar_i2c_write(0x20, 2, register_values[2]);
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setAR1000+0)+0
	movf	(??_setAR1000+0)+0,w
	movwf	(?_ar_i2c_write)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_register_values)^080h+04h,w
	movwf	0+(?_ar_i2c_write)+01h
	movf	1+(_register_values)^080h+04h,w
	movwf	(0+(?_ar_i2c_write)+01h)+1
	clrf	2+(0+(?_ar_i2c_write)+01h)
	clrf	3+(0+(?_ar_i2c_write)+01h)
	movlw	(020h)
	fcall	_ar_i2c_write
	line	427
	
l3546:	
;PR31_final.c: 427: register_values[3] &= ~(1<<14);
	movlw	low(0BFFFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	0+(_register_values)^080h+06h,f
	movlw	high(0BFFFh)
	andwf	1+(_register_values)^080h+06h,f
	line	428
	
l3548:	
;PR31_final.c: 428: ar_i2c_write(0x20, 3,register_values[3]);
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setAR1000+0)+0
	movf	(??_setAR1000+0)+0,w
	movwf	(?_ar_i2c_write)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_register_values)^080h+06h,w
	movwf	0+(?_ar_i2c_write)+01h
	movf	1+(_register_values)^080h+06h,w
	movwf	(0+(?_ar_i2c_write)+01h)+1
	clrf	2+(0+(?_ar_i2c_write)+01h)
	clrf	3+(0+(?_ar_i2c_write)+01h)
	movlw	(020h)
	fcall	_ar_i2c_write
	line	431
	
l3550:	
;PR31_final.c: 431: register_values[3] |= (1<<13);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	0+(_register_values)^080h+06h+(13/8),(13)&7
	line	432
	
l3552:	
;PR31_final.c: 432: ar_i2c_write(0x20, 3,register_values[3]);
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setAR1000+0)+0
	movf	(??_setAR1000+0)+0,w
	movwf	(?_ar_i2c_write)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_register_values)^080h+06h,w
	movwf	0+(?_ar_i2c_write)+01h
	movf	1+(_register_values)^080h+06h,w
	movwf	(0+(?_ar_i2c_write)+01h)+1
	clrf	2+(0+(?_ar_i2c_write)+01h)
	clrf	3+(0+(?_ar_i2c_write)+01h)
	movlw	(020h)
	fcall	_ar_i2c_write
	line	435
	
l3554:	
;PR31_final.c: 435: register_values[2] |= freq_kHz;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setAR1000@freq_kHz),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	0+(_register_values)^080h+04h,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(setAR1000@freq_kHz+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	1+(_register_values)^080h+04h,f
	line	436
;PR31_final.c: 436: ar_i2c_write(0x20, 2,register_values[2]);
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setAR1000+0)+0
	movf	(??_setAR1000+0)+0,w
	movwf	(?_ar_i2c_write)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_register_values)^080h+04h,w
	movwf	0+(?_ar_i2c_write)+01h
	movf	1+(_register_values)^080h+04h,w
	movwf	(0+(?_ar_i2c_write)+01h)+1
	clrf	2+(0+(?_ar_i2c_write)+01h)
	clrf	3+(0+(?_ar_i2c_write)+01h)
	movlw	(020h)
	fcall	_ar_i2c_write
	line	439
	
l3556:	
;PR31_final.c: 439: register_values[2] |= (1<<9);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	0+(_register_values)^080h+04h+(9/8),(9)&7
	line	440
;PR31_final.c: 440: ar_i2c_write(0x20, 2,register_values[2]);
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setAR1000+0)+0
	movf	(??_setAR1000+0)+0,w
	movwf	(?_ar_i2c_write)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_register_values)^080h+04h,w
	movwf	0+(?_ar_i2c_write)+01h
	movf	1+(_register_values)^080h+04h,w
	movwf	(0+(?_ar_i2c_write)+01h)+1
	clrf	2+(0+(?_ar_i2c_write)+01h)
	clrf	3+(0+(?_ar_i2c_write)+01h)
	movlw	(020h)
	fcall	_ar_i2c_write
	line	442
;PR31_final.c: 442: while(STC == 0)
	goto	l3564
	
l1372:	
	line	444
	
l3558:	
;PR31_final.c: 443: {
;PR31_final.c: 444: STC = ar_i2c_read(0x20, 0x13);
	movlw	(013h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setAR1000+0)+0
	movf	(??_setAR1000+0)+0,w
	movwf	(?_ar_i2c_read)
	movlw	(020h)
	fcall	_ar_i2c_read
	movf	(1+(?_ar_i2c_read)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_STC+1)
	addwf	(_STC+1)
	movf	(0+(?_ar_i2c_read)),w
	clrf	(_STC)
	addwf	(_STC)

	line	445
	
l3560:	
;PR31_final.c: 445: STC &= (1<<5);
	movlw	low(020h)
	andwf	(_STC),f
	movlw	high(020h)
	andwf	(_STC+1),f
	line	446
	
l3562:	
;PR31_final.c: 446: delay(10);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0Ah
	movwf	(?_delay)

	fcall	_delay
	goto	l3564
	line	447
	
l1371:	
	line	442
	
l3564:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STC+1),w
	iorwf	(_STC),w
	skipnz
	goto	u3751
	goto	u3750
u3751:
	goto	l3558
u3750:
	goto	l3566
	
l1373:	
	line	451
	
l3566:	
;PR31_final.c: 447: }
;PR31_final.c: 451: register_values[1] &= ~(1<<1);
	movlw	low(0FFFDh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	0+(_register_values)^080h+02h,f
	movlw	high(0FFFDh)
	andwf	1+(_register_values)^080h+02h,f
	line	452
	
l3568:	
;PR31_final.c: 452: ar_i2c_write(0x20, 1,register_values[1]);
	clrf	(?_ar_i2c_write)
	bsf	status,0
	rlf	(?_ar_i2c_write),f
	movf	0+(_register_values)^080h+02h,w
	movwf	0+(?_ar_i2c_write)+01h
	movf	1+(_register_values)^080h+02h,w
	movwf	(0+(?_ar_i2c_write)+01h)+1
	clrf	2+(0+(?_ar_i2c_write)+01h)
	clrf	3+(0+(?_ar_i2c_write)+01h)
	movlw	(020h)
	fcall	_ar_i2c_write
	line	454
	
l3570:	
;PR31_final.c: 454: currentChannel = (ar_i2c_read(0x20, 0x13)&0xFF80)>>7;
	movlw	(013h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setAR1000+0)+0
	movf	(??_setAR1000+0)+0,w
	movwf	(?_ar_i2c_read)
	movlw	(020h)
	fcall	_ar_i2c_read
	movf	(0+?_ar_i2c_read),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_setAR1000+1)+0
	movf	(1+?_ar_i2c_read),w
	movwf	((??_setAR1000+1)+0+1)
	movlw	07h
u3765:
	clrc
	rrf	(??_setAR1000+1)+1,f
	rrf	(??_setAR1000+1)+0,f
	addlw	-1
	skipz
	goto	u3765
	movlw	low(01FFh)
	andwf	0+(??_setAR1000+1)+0,w
	movwf	(_currentChannel)
	movlw	high(01FFh)
	andwf	1+(??_setAR1000+1)+0,w
	movwf	1+(_currentChannel)
	clrf	2+(_currentChannel)
	clrf	3+(_currentChannel)
	line	455
	
l3572:	
;PR31_final.c: 455: currentChannel += 690;
	movlw	0B2h
	addwf	(_currentChannel),f
	movlw	02h
	skipnc
movlw 3
	addwf	(_currentChannel+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(_currentChannel+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(_currentChannel+3),f
	line	456
	
l1374:	
	return
	opt stack 0
GLOBAL	__end_of_setAR1000
	__end_of_setAR1000:
;; =============== function _setAR1000 ends ============

	signat	_setAR1000,4216
	global	_set_vol
psect	text620,local,class=CODE,delta=2
global __ptext620
__ptext620:

;; *************** function _set_vol *****************
;; Defined at:
;;		line 327 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;  key             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  key             1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         1       4       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ar_i2c_write
;; This function is called by:
;;		_main
;;		_adjust_vol
;; This function uses a non-reentrant model
;;
psect	text620
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	327
	global	__size_of_set_vol
	__size_of_set_vol	equ	__end_of_set_vol-_set_vol
	
_set_vol:	
	opt	stack 5
; Regs used in _set_vol: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;set_vol@key stored from wreg
	movwf	(set_vol@key)
	line	328
	
l3522:	
;PR31_final.c: 328: vol = key;
	movf	(set_vol@key),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_set_vol+0)+0
	movf	(??_set_vol+0)+0,w
	movwf	(_vol)
	line	330
	
l3524:	
;PR31_final.c: 330: register_values[1] |= (1<<1);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	0+(_register_values)^080h+02h+(1/8),(1)&7
	line	331
	
l3526:	
;PR31_final.c: 331: ar_i2c_write(0x20, 1, register_values[1]);
	clrf	(?_ar_i2c_write)
	bsf	status,0
	rlf	(?_ar_i2c_write),f
	movf	0+(_register_values)^080h+02h,w
	movwf	0+(?_ar_i2c_write)+01h
	movf	1+(_register_values)^080h+02h,w
	movwf	(0+(?_ar_i2c_write)+01h)+1
	clrf	2+(0+(?_ar_i2c_write)+01h)
	clrf	3+(0+(?_ar_i2c_write)+01h)
	movlw	(020h)
	fcall	_ar_i2c_write
	line	333
	
l3528:	
;PR31_final.c: 333: register_values[3] = (register_values[3] & ~0x0780) | (v1[key] << 7);
	movf	(set_vol@key),w
	addlw	_v1&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_set_vol+0)+0
	clrf	(??_set_vol+0)+0+1
	movlw	07h
	movwf	btemp+1
u3735:
	clrc
	rlf	(??_set_vol+0)+0,f
	rlf	(??_set_vol+0)+1,f
	decfsz	btemp+1,f
	goto	u3735
	movlw	low(0F87Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	0+(_register_values)^080h+06h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_set_vol+2)+0
	movlw	high(0F87Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	1+(_register_values)^080h+06h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??_set_vol+2)+0
	movf	0+(??_set_vol+0)+0,w
	iorwf	0+(??_set_vol+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_register_values)^080h+06h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_set_vol+0)+0,w
	iorwf	1+(??_set_vol+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+0+(_register_values)^080h+06h
	line	334
	
l3530:	
;PR31_final.c: 334: ar_i2c_write(0x20, 3, register_values[3]);
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_set_vol+0)+0
	movf	(??_set_vol+0)+0,w
	movwf	(?_ar_i2c_write)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_register_values)^080h+06h,w
	movwf	0+(?_ar_i2c_write)+01h
	movf	1+(_register_values)^080h+06h,w
	movwf	(0+(?_ar_i2c_write)+01h)+1
	clrf	2+(0+(?_ar_i2c_write)+01h)
	clrf	3+(0+(?_ar_i2c_write)+01h)
	movlw	(020h)
	fcall	_ar_i2c_write
	line	336
	
l3532:	
;PR31_final.c: 336: register_values[14] = (register_values[14] & ~0xF000)| (v2[key]<< 12);
	movf	(set_vol@key),w
	addlw	_v2&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_set_vol+0)+0
	clrf	(??_set_vol+0)+0+1
	movlw	0Ch
	movwf	btemp+1
u3745:
	clrc
	rlf	(??_set_vol+0)+0,f
	rlf	(??_set_vol+0)+1,f
	decfsz	btemp+1,f
	goto	u3745
	movlw	low(0FFFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	0+(_register_values)^080h+01Ch,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_set_vol+2)+0
	movlw	high(0FFFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	1+(_register_values)^080h+01Ch,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??_set_vol+2)+0
	movf	0+(??_set_vol+0)+0,w
	iorwf	0+(??_set_vol+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(_register_values)^080h+01Ch
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_set_vol+0)+0,w
	iorwf	1+(??_set_vol+2)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+0+(_register_values)^080h+01Ch
	line	337
	
l3534:	
;PR31_final.c: 337: ar_i2c_write(0x20, 14, register_values[14]);
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_set_vol+0)+0
	movf	(??_set_vol+0)+0,w
	movwf	(?_ar_i2c_write)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	0+(_register_values)^080h+01Ch,w
	movwf	0+(?_ar_i2c_write)+01h
	movf	1+(_register_values)^080h+01Ch,w
	movwf	(0+(?_ar_i2c_write)+01h)+1
	clrf	2+(0+(?_ar_i2c_write)+01h)
	clrf	3+(0+(?_ar_i2c_write)+01h)
	movlw	(020h)
	fcall	_ar_i2c_write
	line	339
	
l3536:	
;PR31_final.c: 339: register_values[1] &= ~(1<<1);
	movlw	low(0FFFDh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	0+(_register_values)^080h+02h,f
	movlw	high(0FFFDh)
	andwf	1+(_register_values)^080h+02h,f
	line	340
;PR31_final.c: 340: ar_i2c_write(0x20, 1,register_values[1]);
	clrf	(?_ar_i2c_write)
	bsf	status,0
	rlf	(?_ar_i2c_write),f
	movf	0+(_register_values)^080h+02h,w
	movwf	0+(?_ar_i2c_write)+01h
	movf	1+(_register_values)^080h+02h,w
	movwf	(0+(?_ar_i2c_write)+01h)+1
	clrf	2+(0+(?_ar_i2c_write)+01h)
	clrf	3+(0+(?_ar_i2c_write)+01h)
	movlw	(020h)
	fcall	_ar_i2c_write
	line	341
	
l1340:	
	return
	opt stack 0
GLOBAL	__end_of_set_vol
	__end_of_set_vol:
;; =============== function _set_vol ends ============

	signat	_set_vol,4216
	global	_uart_sendstr
psect	text621,local,class=CODE,delta=2
global __ptext621
__ptext621:

;; *************** function _uart_sendstr *****************
;; Defined at:
;;		line 545 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_21(4), STR_19(9), STR_18(9), STR_17(17), 
;;		 -> STR_15(8), STR_13(9), STR_11(9), STR_9(17), 
;;		 -> STR_7(12), STR_5(17), STR_3(21), 
;; Auto vars:     Size  Location     Type
;;  s               1    2[COMMON] PTR const unsigned char 
;;		 -> STR_21(4), STR_19(9), STR_18(9), STR_17(17), 
;;		 -> STR_15(8), STR_13(9), STR_11(9), STR_9(17), 
;;		 -> STR_7(12), STR_5(17), STR_3(21), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uart_tx
;; This function is called by:
;;		_main
;;		_switch_channel
;;		_adjust_channel
;;		_decrease_chan
;;		_increase_chan
;;		_send_dec
;; This function uses a non-reentrant model
;;
psect	text621
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	545
	global	__size_of_uart_sendstr
	__size_of_uart_sendstr	equ	__end_of_uart_sendstr-_uart_sendstr
	
_uart_sendstr:	
	opt	stack 3
; Regs used in _uart_sendstr: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;uart_sendstr@s stored from wreg
	movwf	(uart_sendstr@s)
	line	546
	
l3514:	
;PR31_final.c: 546: uart_tx(0x0A);
	movlw	(0Ah)
	fcall	_uart_tx
	line	547
;PR31_final.c: 547: uart_tx(0x0D);
	movlw	(0Dh)
	fcall	_uart_tx
	line	549
;PR31_final.c: 549: while (*s != '\0')
	goto	l3520
	
l1424:	
	line	551
	
l3516:	
;PR31_final.c: 550: {
;PR31_final.c: 551: uart_tx(*s);
	movf	(uart_sendstr@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_uart_tx
	line	552
	
l3518:	
;PR31_final.c: 552: s++;
	movlw	(01h)
	movwf	(??_uart_sendstr+0)+0
	movf	(??_uart_sendstr+0)+0,w
	addwf	(uart_sendstr@s),f
	goto	l3520
	line	553
	
l1423:	
	line	549
	
l3520:	
	movf	(uart_sendstr@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3721
	goto	u3720
u3721:
	goto	l3516
u3720:
	goto	l1426
	
l1425:	
	line	555
	
l1426:	
	return
	opt stack 0
GLOBAL	__end_of_uart_sendstr
	__end_of_uart_sendstr:
;; =============== function _uart_sendstr ends ============

	signat	_uart_sendstr,4216
	global	_ar1000_init
psect	text622,local,class=CODE,delta=2
global __ptext622
__ptext622:

;; *************** function _ar1000_init *****************
;; Defined at:
;;		line 394 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   13[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;;		_ar_i2c_write
;;		_ar_i2c_read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text622
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	394
	global	__size_of_ar1000_init
	__size_of_ar1000_init	equ	__end_of_ar1000_init-_ar1000_init
	
_ar1000_init:	
	opt	stack 6
; Regs used in _ar1000_init: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	395
	
l3490:	
;PR31_final.c: 395: delay(100);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	064h
	movwf	(?_delay)

	fcall	_delay
	line	396
;PR31_final.c: 396: ar_i2c_write(0x20, 0, register_values[0] & 0xFFFE);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_ar_i2c_write)
	movlw	low(0FFFEh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(_register_values)^080h,w
	movwf	0+(?_ar_i2c_write)+01h
	movlw	high(0FFFEh)
	andwf	(_register_values+1)^080h,w
	movwf	1+0+(?_ar_i2c_write)+01h
	clrf	2+0+(?_ar_i2c_write)+01h
	clrf	3+0+(?_ar_i2c_write)+01h
	movlw	(020h)
	fcall	_ar_i2c_write
	line	398
	
l3492:	
;PR31_final.c: 398: for(int i = 1 ; i < 18 ; i++)
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ar1000_init@i)
	movlw	high(01h)
	movwf	((ar1000_init@i))+1
	
l3494:	
	movf	(ar1000_init@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(012h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3695
	movlw	low(012h)
	subwf	(ar1000_init@i),w
u3695:

	skipc
	goto	u3691
	goto	u3690
u3691:
	goto	l3498
u3690:
	goto	l3504
	
l3496:	
	goto	l3504
	line	399
	
l1363:	
	line	400
	
l3498:	
;PR31_final.c: 399: {
;PR31_final.c: 400: ar_i2c_write(0x20, i, register_values[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ar1000_init@i),w
	movwf	(??_ar1000_init+0)+0
	movf	(??_ar1000_init+0)+0,w
	movwf	(?_ar_i2c_write)
	movf	(ar1000_init@i),w
	movwf	(??_ar1000_init+1)+0
	addwf	(??_ar1000_init+1)+0,w
	addlw	_register_values&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_ar1000_init+2)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_ar1000_init+2)+0+1
	movf	0+(??_ar1000_init+2)+0,w
	movwf	0+(?_ar_i2c_write)+01h
	movf	1+(??_ar1000_init+2)+0,w
	movwf	(0+(?_ar_i2c_write)+01h)+1
	clrf	2+(0+(?_ar_i2c_write)+01h)
	clrf	3+(0+(?_ar_i2c_write)+01h)
	movlw	(020h)
	fcall	_ar_i2c_write
	line	398
	
l3500:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(ar1000_init@i),f
	skipnc
	incf	(ar1000_init@i+1),f
	movlw	high(01h)
	addwf	(ar1000_init@i+1),f
	
l3502:	
	movf	(ar1000_init@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(012h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3705
	movlw	low(012h)
	subwf	(ar1000_init@i),w
u3705:

	skipc
	goto	u3701
	goto	u3700
u3701:
	goto	l3498
u3700:
	goto	l3504
	
l1364:	
	line	403
	
l3504:	
;PR31_final.c: 401: }
;PR31_final.c: 403: ar_i2c_write(0x20, 0, register_values[0]);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_ar_i2c_write)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_register_values)^080h,w
	movwf	0+(?_ar_i2c_write)+01h
	movf	(_register_values+1)^080h,w
	movwf	(0+(?_ar_i2c_write)+01h)+1
	clrf	2+(0+(?_ar_i2c_write)+01h)
	clrf	3+(0+(?_ar_i2c_write)+01h)
	movlw	(020h)
	fcall	_ar_i2c_write
	line	405
;PR31_final.c: 405: while(STC == 0)
	goto	l3512
	
l1366:	
	line	407
	
l3506:	
;PR31_final.c: 406: {
;PR31_final.c: 407: STC = ar_i2c_read(0x20, 0x13);
	movlw	(013h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ar1000_init+0)+0
	movf	(??_ar1000_init+0)+0,w
	movwf	(?_ar_i2c_read)
	movlw	(020h)
	fcall	_ar_i2c_read
	movf	(1+(?_ar_i2c_read)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_STC+1)
	addwf	(_STC+1)
	movf	(0+(?_ar_i2c_read)),w
	clrf	(_STC)
	addwf	(_STC)

	line	408
	
l3508:	
;PR31_final.c: 408: STC &= (1<<5);
	movlw	low(020h)
	andwf	(_STC),f
	movlw	high(020h)
	andwf	(_STC+1),f
	line	409
	
l3510:	
;PR31_final.c: 409: delay(10);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0Ah
	movwf	(?_delay)

	fcall	_delay
	goto	l3512
	line	411
	
l1365:	
	line	405
	
l3512:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_STC+1),w
	iorwf	(_STC),w
	skipnz
	goto	u3711
	goto	u3710
u3711:
	goto	l3506
u3710:
	goto	l1368
	
l1367:	
	line	413
	
l1368:	
	return
	opt stack 0
GLOBAL	__end_of_ar1000_init
	__end_of_ar1000_init:
;; =============== function _ar1000_init ends ============

	signat	_ar1000_init,88
	global	_uart_init
psect	text623,local,class=CODE,delta=2
global __ptext623
__ptext623:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 516 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_uart_tx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text623
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	516
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 6
; Regs used in _uart_init: [wreg+status,2+status,0+pclath+cstack]
	line	517
	
l3474:	
;PR31_final.c: 517: BRGH = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1218/8)^080h,(1218)&7
	line	518
	
l3476:	
;PR31_final.c: 518: SPBRG = (20000000 / 16 / 9600) - 1;
	movlw	(081h)
	movwf	(153)^080h	;volatile
	line	519
	
l3478:	
;PR31_final.c: 519: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	520
	
l3480:	
;PR31_final.c: 520: CREN = 1;
	bsf	(196/8),(196)&7
	line	521
	
l3482:	
;PR31_final.c: 521: TXEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	line	522
	
l3484:	
;PR31_final.c: 522: TRISC6 = 0;
	bcf	(1086/8)^080h,(1086)&7
	line	523
	
l3486:	
;PR31_final.c: 523: TRISC7 = 1;
	bsf	(1087/8)^080h,(1087)&7
	line	524
	
l3488:	
;PR31_final.c: 524: uart_tx(0x0C);
	movlw	(0Ch)
	fcall	_uart_tx
	line	525
	
l1407:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
	global	___lldiv
psect	text624,local,class=CODE,delta=2
global __ptext624
__ptext624:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    9[COMMON] unsigned long 
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_dec
;; This function uses a non-reentrant model
;;
psect	text624
	file	"C:\Program Files\HI-TECH Software\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 4
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l3450:	
	movlw	0
	movwf	(___lldiv@quotient+3)
	movlw	0
	movwf	(___lldiv@quotient+2)
	movlw	0
	movwf	(___lldiv@quotient+1)
	movlw	0
	movwf	(___lldiv@quotient)

	line	10
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u3621
	goto	u3620
u3621:
	goto	l3470
u3620:
	line	11
	
l3452:	
	clrf	(___lldiv@counter)
	bsf	status,0
	rlf	(___lldiv@counter),f
	line	12
	goto	l3456
	
l1636:	
	line	13
	
l3454:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3635:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3635
	line	14
	movlw	(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l3456
	line	15
	
l1635:	
	line	12
	
l3456:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u3641
	goto	u3640
u3641:
	goto	l3454
u3640:
	goto	l3458
	
l1637:	
	goto	l3458
	line	16
	
l1638:	
	line	17
	
l3458:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3655:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3655
	line	18
	
l3460:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u3665
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u3665
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u3665
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u3665:
	skipc
	goto	u3661
	goto	u3660
u3661:
	goto	l3466
u3660:
	line	19
	
l3462:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	20
	
l3464:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l3466
	line	21
	
l1639:	
	line	22
	
l3466:	
	movlw	01h
u3675:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u3675

	line	23
	
l3468:	
	movlw	low(01h)
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l3458
u3680:
	goto	l3470
	
l1640:	
	goto	l3470
	line	24
	
l1634:	
	line	25
	
l3470:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l1641
	
l3472:	
	line	26
	
l1641:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___llmod
psect	text625,local,class=CODE,delta=2
global __ptext625
__ptext625:

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_dec
;; This function uses a non-reentrant model
;;
psect	text625
	file	"C:\Program Files\HI-TECH Software\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 4
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l3430:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u3561
	goto	u3560
u3561:
	goto	l3446
u3560:
	line	9
	
l3432:	
	clrf	(___llmod@counter)
	bsf	status,0
	rlf	(___llmod@counter),f
	line	10
	goto	l3436
	
l1617:	
	line	11
	
l3434:	
	movlw	01h
	movwf	(??___llmod+0)+0
u3575:
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	decfsz	(??___llmod+0)+0
	goto	u3575
	line	12
	movlw	(01h)
	movwf	(??___llmod+0)+0
	movf	(??___llmod+0)+0,w
	addwf	(___llmod@counter),f
	goto	l3436
	line	13
	
l1616:	
	line	10
	
l3436:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u3581
	goto	u3580
u3581:
	goto	l3434
u3580:
	goto	l3438
	
l1618:	
	goto	l3438
	line	14
	
l1619:	
	line	15
	
l3438:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u3595
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u3595
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u3595
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u3595:
	skipc
	goto	u3591
	goto	u3590
u3591:
	goto	l3442
u3590:
	line	16
	
l3440:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	goto	l3442
	
l1620:	
	line	17
	
l3442:	
	movlw	01h
u3605:
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	addlw	-1
	skipz
	goto	u3605

	line	18
	
l3444:	
	movlw	low(01h)
	subwf	(___llmod@counter),f
	btfss	status,2
	goto	u3611
	goto	u3610
u3611:
	goto	l3438
u3610:
	goto	l3446
	
l1621:	
	goto	l3446
	line	19
	
l1615:	
	line	20
	
l3446:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	goto	l1622
	
l3448:	
	line	21
	
l1622:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	_eprom_read
psect	text626,local,class=CODE,delta=2
global __ptext626
__ptext626:

;; *************** function _eprom_read *****************
;; Defined at:
;;		line 561 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;  channel_adr     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel_adr     1    4[COMMON] unsigned char 
;;  fm_value        2    2[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_switch_channel
;; This function uses a non-reentrant model
;;
psect	text626
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	561
	global	__size_of_eprom_read
	__size_of_eprom_read	equ	__end_of_eprom_read-_eprom_read
	
_eprom_read:	
	opt	stack 5
; Regs used in _eprom_read: [wreg+status,2+status,0]
;eprom_read@channel_adr stored from wreg
	line	563
	movwf	(eprom_read@channel_adr)
	
l3418:	
;PR31_final.c: 562: unsigned int fm_value;
;PR31_final.c: 563: EEADR = channel_adr;
	movf	(eprom_read@channel_adr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	564
	
l3420:	
;PR31_final.c: 564: EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	565
	
l3422:	
;PR31_final.c: 565: RD = 1;
	bsf	(3168/8)^0180h,(3168)&7
	line	566
;PR31_final.c: 566: while (RD == 1);
	goto	l1429
	
l1430:	
	
l1429:	
	btfsc	(3168/8)^0180h,(3168)&7
	goto	u3551
	goto	u3550
u3551:
	goto	l1429
u3550:
	goto	l3424
	
l1431:	
	line	567
	
l3424:	
;PR31_final.c: 567: fm_value = (EEDATA + 825);
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	addlw	low(0339h)
	movwf	(eprom_read@fm_value)
	movlw	high(0339h)
	skipnc
	movlw	(high(0339h)+1)&0ffh
	movwf	((eprom_read@fm_value))+1
	line	569
	
l3426:	
;PR31_final.c: 569: return fm_value;
	movf	(eprom_read@fm_value+1),w
	clrf	(?_eprom_read+1)
	addwf	(?_eprom_read+1)
	movf	(eprom_read@fm_value),w
	clrf	(?_eprom_read)
	addwf	(?_eprom_read)

	goto	l1432
	
l3428:	
	line	570
	
l1432:	
	return
	opt stack 0
GLOBAL	__end_of_eprom_read
	__end_of_eprom_read:
;; =============== function _eprom_read ends ============

	signat	_eprom_read,4218
	global	_uart_tx
psect	text627,local,class=CODE,delta=2
global __ptext627
__ptext627:

;; *************** function _uart_tx *****************
;; Defined at:
;;		line 528 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;  uc_data         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  uc_data         1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_switch_channel
;;		_adjust_channel
;;		_decrease_chan
;;		_increase_chan
;;		_send_dec
;;		_adjust_vol
;;		_uart_init
;;		_uart_sendstr
;; This function uses a non-reentrant model
;;
psect	text627
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	528
	global	__size_of_uart_tx
	__size_of_uart_tx	equ	__end_of_uart_tx-_uart_tx
	
_uart_tx:	
	opt	stack 6
; Regs used in _uart_tx: [wreg]
;uart_tx@uc_data stored from wreg
	movwf	(uart_tx@uc_data)
	line	529
	
l3414:	
;PR31_final.c: 529: while (TXIF == 0);
	goto	l1410
	
l1411:	
	
l1410:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u3541
	goto	u3540
u3541:
	goto	l1410
u3540:
	goto	l3416
	
l1412:	
	line	530
	
l3416:	
;PR31_final.c: 530: TXREG = uc_data;
	movf	(uart_tx@uc_data),w
	movwf	(25)	;volatile
	line	531
	
l1413:	
	return
	opt stack 0
GLOBAL	__end_of_uart_tx
	__end_of_uart_tx:
;; =============== function _uart_tx ends ============

	signat	_uart_tx,4216
	global	_eprom_write
psect	text628,local,class=CODE,delta=2
global __ptext628
__ptext628:

;; *************** function _eprom_write *****************
;; Defined at:
;;		line 573 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;  channel_adr     1    wreg     unsigned char 
;;  fm_value        2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  channel_adr     1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_adjust_channel
;; This function uses a non-reentrant model
;;
psect	text628
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	573
	global	__size_of_eprom_write
	__size_of_eprom_write	equ	__end_of_eprom_write-_eprom_write
	
_eprom_write:	
	opt	stack 6
; Regs used in _eprom_write: [wreg]
;eprom_write@channel_adr stored from wreg
	movwf	(eprom_write@channel_adr)
	line	574
	
l3404:	
;PR31_final.c: 574: EEADR = channel_adr;
	movf	(eprom_write@channel_adr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	575
;PR31_final.c: 575: fm_value -= 825;
	movlw	low(0339h)
	subwf	(eprom_write@fm_value),f
	movlw	high(0339h)
	skipc
	decf	(eprom_write@fm_value+1),f
	subwf	(eprom_write@fm_value+1),f
	line	576
;PR31_final.c: 576: EEDATA = fm_value;
	movf	(eprom_write@fm_value),w
	movwf	(268)^0100h	;volatile
	line	577
	
l3406:	
;PR31_final.c: 577: EEPGD = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3175/8)^0180h,(3175)&7
	line	578
	
l3408:	
;PR31_final.c: 578: WREN = 1;
	bsf	(3170/8)^0180h,(3170)&7
	line	579
;PR31_final.c: 579: EECON2 = 0x55;
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	line	580
;PR31_final.c: 580: EECON2 = 0xAA;
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	line	581
	
l3410:	
;PR31_final.c: 581: WR = 1;
	bsf	(3169/8)^0180h,(3169)&7
	line	582
	
l3412:	
;PR31_final.c: 582: WREN = 0;
	bcf	(3170/8)^0180h,(3170)&7
	line	583
;PR31_final.c: 583: while (WR == 1);
	goto	l1435
	
l1436:	
	
l1435:	
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u3531
	goto	u3530
u3531:
	goto	l1435
u3530:
	goto	l1438
	
l1437:	
	line	584
	
l1438:	
	return
	opt stack 0
GLOBAL	__end_of_eprom_write
	__end_of_eprom_write:
;; =============== function _eprom_write ends ============

	signat	_eprom_write,8312
	global	_eeprom_read
psect	text629,local,class=CODE,delta=2
global __ptext629
__ptext629:

;; *************** function _eeprom_read *****************
;; Defined at:
;;		line 8 in file "eeread.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text629
	file	"C:\Program Files\HI-TECH Software\sources\eeread.c"
	line	8
	global	__size_of_eeprom_read
	__size_of_eeprom_read	equ	__end_of_eeprom_read-_eeprom_read
	
_eeprom_read:	
	opt	stack 7
; Regs used in _eeprom_read: [wreg+status,2+status,0]
;eeprom_read@addr stored from wreg
	line	10
	movwf	(eeprom_read@addr)
	line	9
	
l1451:	
	line	10
# 10 "C:\Program Files\HI-TECH Software\sources\eeread.c"
clrwdt ;#
psect	text629
	line	11
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u3521
	goto	u3520
u3521:
	goto	l1451
u3520:
	goto	l3400
	
l1452:	
	line	12
	
l3400:	
	movf	(eeprom_read@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movlw	(03Fh)
	movwf	(??_eeprom_read+0)+0
	movf	(??_eeprom_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volatile
	bsf	(3168/8)^0180h,(3168)&7
	clrc
	btfsc	(3168/8)^0180h,(3168)&7
	setc
	movlw	0
	skipnc
	movlw	1

	movwf	(??_eeprom_read+1)+0
	clrf	(??_eeprom_read+1)+0+1
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	goto	l1453
	
l3402:	
	line	13
	
l1453:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
;; =============== function _eeprom_read ends ============

	signat	_eeprom_read,4217
	global	_delay
psect	text630,local,class=CODE,delta=2
global __ptext630
__ptext630:

;; *************** function _delay *****************
;; Defined at:
;;		line 462 in file "C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
;; Parameters:    Size  Location     Type
;;  RC4             4    0[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_adjust_channel
;;		_decrease_chan
;;		_increase_chan
;;		_send_dec
;;		_adjust_vol
;;		_ar1000_init
;;		_setAR1000
;;		_send_config
;;		_send_char
;;		_e_pulse
;;		_lcd_clr
;; This function uses a non-reentrant model
;;
psect	text630
	file	"C:\Users\Phang\Desktop\9.80\PR 31\PR31_final.c"
	line	462
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	463
	
l3394:	
;PR31_final.c: 463: for( ;RC4>0;RC4-=1);
	movf	(delay@RC4+3),w
	iorwf	(delay@RC4+2),w
	iorwf	(delay@RC4+1),w
	iorwf	(delay@RC4),w
	skipz
	goto	u3491
	goto	u3490
u3491:
	goto	l3398
u3490:
	goto	l1379
	
l3396:	
	goto	l1379
	
l1377:	
	
l3398:	
	movlw	01h
	movwf	((??_delay+0)+0)
	movlw	0
	movwf	((??_delay+0)+0+1)
	movlw	0
	movwf	((??_delay+0)+0+2)
	movlw	0
	movwf	((??_delay+0)+0+3)
	movf	0+(??_delay+0)+0,w
	subwf	(delay@RC4),f
	movf	1+(??_delay+0)+0,w
	skipc
	incfsz	1+(??_delay+0)+0,w
	goto	u3505
	goto	u3506
u3505:
	subwf	(delay@RC4+1),f
u3506:
	movf	2+(??_delay+0)+0,w
	skipc
	incfsz	2+(??_delay+0)+0,w
	goto	u3507
	goto	u3508
u3507:
	subwf	(delay@RC4+2),f
u3508:
	movf	3+(??_delay+0)+0,w
	skipc
	incfsz	3+(??_delay+0)+0,w
	goto	u3509
	goto	u3500
u3509:
	subwf	(delay@RC4+3),f
u3500:

	movf	(delay@RC4+3),w
	iorwf	(delay@RC4+2),w
	iorwf	(delay@RC4+1),w
	iorwf	(delay@RC4),w
	skipz
	goto	u3511
	goto	u3510
u3511:
	goto	l3398
u3510:
	goto	l1379
	
l1378:	
	line	464
	
l1379:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_ar_i2c_write
psect	text631,local,class=CODE,delta=2
global __ptext631
__ptext631:

;; *************** function _ar_i2c_write *****************
;; Defined at:
;;		line 220 in file "C:\Users\Phang\Desktop\9.80\PR 31\i2c_ar1000.c"
;; Parameters:    Size  Location     Type
;;  ar_slave_add    1    wreg     unsigned char 
;;  ar_register     1    0[COMMON] unsigned char 
;;  ar_data         4    1[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  ar_slave_add    1   10[COMMON] unsigned char 
;;  ar_transmit_    1   12[COMMON] unsigned char 
;;  ar_transmit_    1   11[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:        13       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_set_vol
;;		_ar1000_init
;;		_setAR1000
;; This function uses a non-reentrant model
;;
psect	text631
	file	"C:\Users\Phang\Desktop\9.80\PR 31\i2c_ar1000.c"
	line	220
	global	__size_of_ar_i2c_write
	__size_of_ar_i2c_write	equ	__end_of_ar_i2c_write-_ar_i2c_write
	
_ar_i2c_write:	
	opt	stack 5
; Regs used in _ar_i2c_write: [wreg+status,2+status,0]
;ar_i2c_write@ar_slave_address stored from wreg
	line	224
	movwf	(ar_i2c_write@ar_slave_address)
	
l3372:	
;i2c_ar1000.c: 223: unsigned char ar_transmit_byte1, ar_transmit_byte2;
;i2c_ar1000.c: 224: ar_transmit_byte1 = (ar_data & 0xFF00) >> 8;
	movf	(ar_i2c_write@ar_data),w
	movwf	(??_ar_i2c_write+0)+0
	movf	(ar_i2c_write@ar_data+1),w
	movwf	((??_ar_i2c_write+0)+0+1)
	movf	(ar_i2c_write@ar_data+2),w
	movwf	((??_ar_i2c_write+0)+0+2)
	movf	(ar_i2c_write@ar_data+3),w
	movwf	((??_ar_i2c_write+0)+0+3)
	movlw	08h
u3345:
	clrc
	rrf	(??_ar_i2c_write+0)+3,f
	rrf	(??_ar_i2c_write+0)+2,f
	rrf	(??_ar_i2c_write+0)+1,f
	rrf	(??_ar_i2c_write+0)+0,f
u3340:
	addlw	-1
	skipz
	goto	u3345
	movf	0+(??_ar_i2c_write+0)+0,w
	movwf	(??_ar_i2c_write+4)+0
	movf	(??_ar_i2c_write+4)+0,w
	movwf	(ar_i2c_write@ar_transmit_byte1)
	line	225
	
l3374:	
;i2c_ar1000.c: 225: ar_transmit_byte2 = (ar_data & 0x00FF);
	movf	(ar_i2c_write@ar_data),w
	movwf	(??_ar_i2c_write+0)+0
	movf	(??_ar_i2c_write+0)+0,w
	movwf	(ar_i2c_write@ar_transmit_byte2)
	line	228
	
l3376:	
;i2c_ar1000.c: 228: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	229
;i2c_ar1000.c: 229: while (SEN == 1);
	goto	l615
	
l616:	
	
l615:	
	btfsc	(1160/8)^080h,(1160)&7
	goto	u3351
	goto	u3350
u3351:
	goto	l615
u3350:
	goto	l3378
	
l617:	
	line	232
	
l3378:	
;i2c_ar1000.c: 232: SSPBUF = ar_slave_address | 0x00;
	movf	(ar_i2c_write@ar_slave_address),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	235
;i2c_ar1000.c: 235: while (RW == 1);
	goto	l618
	
l619:	
	
l618:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3361
	goto	u3360
u3361:
	goto	l618
u3360:
	
l620:	
	line	238
;i2c_ar1000.c: 238: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l3382
u3370:
	line	240
	
l3380:	
;i2c_ar1000.c: 240: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	241
;i2c_ar1000.c: 241: while (PEN == 1);
	goto	l622
	
l623:	
	
l622:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3381
	goto	u3380
u3381:
	goto	l622
u3380:
	goto	l625
	
l624:	
	line	243
;i2c_ar1000.c: 243: return;
	goto	l625
	line	244
	
l621:	
	line	247
	
l3382:	
;i2c_ar1000.c: 244: }
;i2c_ar1000.c: 247: SSPBUF = ar_register;
	movf	(ar_i2c_write@ar_register),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	250
;i2c_ar1000.c: 250: while (RW == 1);
	goto	l626
	
l627:	
	
l626:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3391
	goto	u3390
u3391:
	goto	l626
u3390:
	
l628:	
	line	253
;i2c_ar1000.c: 253: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3401
	goto	u3400
u3401:
	goto	l3386
u3400:
	line	255
	
l3384:	
;i2c_ar1000.c: 255: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	256
;i2c_ar1000.c: 256: while (PEN == 1);
	goto	l630
	
l631:	
	
l630:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3411
	goto	u3410
u3411:
	goto	l630
u3410:
	goto	l625
	
l632:	
	line	258
;i2c_ar1000.c: 258: return;
	goto	l625
	line	259
	
l629:	
	line	263
	
l3386:	
;i2c_ar1000.c: 259: }
;i2c_ar1000.c: 263: SSPBUF = ar_transmit_byte1;
	movf	(ar_i2c_write@ar_transmit_byte1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	266
;i2c_ar1000.c: 266: while (RW == 1);
	goto	l633
	
l634:	
	
l633:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3421
	goto	u3420
u3421:
	goto	l633
u3420:
	
l635:	
	line	269
;i2c_ar1000.c: 269: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3431
	goto	u3430
u3431:
	goto	l3390
u3430:
	line	271
	
l3388:	
;i2c_ar1000.c: 271: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	272
;i2c_ar1000.c: 272: while (PEN == 1);
	goto	l637
	
l638:	
	
l637:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l637
u3440:
	goto	l625
	
l639:	
	line	274
;i2c_ar1000.c: 274: return;
	goto	l625
	line	275
	
l636:	
	line	278
	
l3390:	
;i2c_ar1000.c: 275: }
;i2c_ar1000.c: 278: SSPBUF = ar_transmit_byte2;
	movf	(ar_i2c_write@ar_transmit_byte2),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	281
;i2c_ar1000.c: 281: while (RW == 1);
	goto	l640
	
l641:	
	
l640:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3451
	goto	u3450
u3451:
	goto	l640
u3450:
	
l642:	
	line	284
;i2c_ar1000.c: 284: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l643
u3460:
	line	286
	
l3392:	
;i2c_ar1000.c: 286: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	287
;i2c_ar1000.c: 287: while (PEN == 1);
	goto	l644
	
l645:	
	
l644:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3471
	goto	u3470
u3471:
	goto	l644
u3470:
	goto	l625
	
l646:	
	line	289
;i2c_ar1000.c: 289: return;
	goto	l625
	line	290
	
l643:	
	line	293
;i2c_ar1000.c: 290: }
;i2c_ar1000.c: 293: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	294
;i2c_ar1000.c: 294: while (PEN == 1);
	goto	l647
	
l648:	
	
l647:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l647
u3480:
	goto	l625
	
l649:	
	line	296
	
l625:	
	return
	opt stack 0
GLOBAL	__end_of_ar_i2c_write
	__end_of_ar_i2c_write:
;; =============== function _ar_i2c_write ends ============

	signat	_ar_i2c_write,12408
	global	_ar_i2c_read
psect	text632,local,class=CODE,delta=2
global __ptext632
__ptext632:

;; *************** function _ar_i2c_read *****************
;; Defined at:
;;		line 83 in file "C:\Users\Phang\Desktop\9.80\PR 31\i2c_ar1000.c"
;; Parameters:    Size  Location     Type
;;  ar_slave_add    1    wreg     unsigned char 
;;  ar_register     1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  ar_slave_add    1    4[BANK0 ] unsigned char 
;;  count           4    5[BANK0 ] unsigned long 
;;  ar_received_    2    0[BANK0 ] unsigned int 
;;  ar_received_    1    3[BANK0 ] unsigned char 
;;  ar_received_    1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       9       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         6       9       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ar1000_init
;;		_setAR1000
;; This function uses a non-reentrant model
;;
psect	text632
	file	"C:\Users\Phang\Desktop\9.80\PR 31\i2c_ar1000.c"
	line	83
	global	__size_of_ar_i2c_read
	__size_of_ar_i2c_read	equ	__end_of_ar_i2c_read-_ar_i2c_read
	
_ar_i2c_read:	
	opt	stack 4
; Regs used in _ar_i2c_read: [wreg+status,2+status,0+btemp+1]
;ar_i2c_read@ar_slave_address stored from wreg
	line	85
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ar_i2c_read@ar_slave_address)
	
l3302:	
;i2c_ar1000.c: 85: unsigned char ar_received_byte1=0, ar_received_byte2=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(ar_i2c_read@ar_received_byte1)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(ar_i2c_read@ar_received_byte2)
	line	86
	
l3304:	
;i2c_ar1000.c: 86: unsigned int ar_received_byte=0;
	movlw	low(0)
	movwf	(ar_i2c_read@ar_received_byte)
	movlw	high(0)
	movwf	((ar_i2c_read@ar_received_byte))+1
	line	90
	
l3306:	
;i2c_ar1000.c: 90: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	91
;i2c_ar1000.c: 91: while (SEN == 1);
	goto	l562
	
l563:	
	
l562:	
	btfsc	(1160/8)^080h,(1160)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l562
u3110:
	goto	l3308
	
l564:	
	line	94
	
l3308:	
;i2c_ar1000.c: 94: SSPBUF = ar_slave_address | 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ar_i2c_read@ar_slave_address),w
	movwf	(19)	;volatile
	line	97
;i2c_ar1000.c: 97: while (RW == 1);
	goto	l565
	
l566:	
	
l565:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3121
	goto	u3120
u3121:
	goto	l565
u3120:
	
l567:	
	line	100
;i2c_ar1000.c: 100: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3131
	goto	u3130
u3131:
	goto	l3316
u3130:
	line	102
	
l3310:	
;i2c_ar1000.c: 102: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	103
;i2c_ar1000.c: 103: while (PEN == 1);
	goto	l569
	
l570:	
	
l569:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l569
u3140:
	goto	l3312
	
l571:	
	line	105
	
l3312:	
;i2c_ar1000.c: 105: return 0;
	movlw	low(0)
	movwf	(?_ar_i2c_read)
	movlw	high(0)
	movwf	((?_ar_i2c_read))+1
	goto	l572
	
l3314:	
	goto	l572
	line	106
	
l568:	
	line	109
	
l3316:	
;i2c_ar1000.c: 106: }
;i2c_ar1000.c: 109: SSPBUF = ar_register;
	movf	(ar_i2c_read@ar_register),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	112
;i2c_ar1000.c: 112: while (RW == 1);
	goto	l573
	
l574:	
	
l573:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l573
u3150:
	
l575:	
	line	115
;i2c_ar1000.c: 115: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l576
u3160:
	line	117
	
l3318:	
;i2c_ar1000.c: 117: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	118
;i2c_ar1000.c: 118: while (PEN == 1);
	goto	l577
	
l578:	
	
l577:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l577
u3170:
	goto	l3320
	
l579:	
	line	120
	
l3320:	
;i2c_ar1000.c: 120: return 0;
	movlw	low(0)
	movwf	(?_ar_i2c_read)
	movlw	high(0)
	movwf	((?_ar_i2c_read))+1
	goto	l572
	
l3322:	
	goto	l572
	line	121
	
l576:	
	line	126
;i2c_ar1000.c: 121: }
;i2c_ar1000.c: 126: RSEN = 1;
	bsf	(1161/8)^080h,(1161)&7
	line	127
;i2c_ar1000.c: 127: while (RSEN == 1);
	goto	l580
	
l581:	
	
l580:	
	btfsc	(1161/8)^080h,(1161)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l580
u3180:
	goto	l3324
	
l582:	
	line	130
	
l3324:	
;i2c_ar1000.c: 130: SSPBUF = ar_slave_address | 0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ar_i2c_read@ar_slave_address),w
	iorlw	01h
	movwf	(19)	;volatile
	line	133
;i2c_ar1000.c: 133: while (RW == 1);
	goto	l583
	
l584:	
	
l583:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1186/8)^080h,(1186)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l583
u3190:
	
l585:	
	line	136
;i2c_ar1000.c: 136: if (ACKSTAT == 1) {
	btfss	(1166/8)^080h,(1166)&7
	goto	u3201
	goto	u3200
u3201:
	goto	l586
u3200:
	line	138
	
l3326:	
;i2c_ar1000.c: 138: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	139
;i2c_ar1000.c: 139: while (PEN == 1);
	goto	l587
	
l588:	
	
l587:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l587
u3210:
	goto	l3328
	
l589:	
	line	141
	
l3328:	
;i2c_ar1000.c: 141: return 0;
	movlw	low(0)
	movwf	(?_ar_i2c_read)
	movlw	high(0)
	movwf	((?_ar_i2c_read))+1
	goto	l572
	
l3330:	
	goto	l572
	line	142
	
l586:	
	line	145
;i2c_ar1000.c: 142: }
;i2c_ar1000.c: 145: RCEN = 1;
	bsf	(1163/8)^080h,(1163)&7
	line	148
	
l3332:	
;i2c_ar1000.c: 148: unsigned long count = 10000L;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ar_i2c_read@count+3)
	movlw	0
	movwf	(ar_i2c_read@count+2)
	movlw	027h
	movwf	(ar_i2c_read@count+1)
	movlw	010h
	movwf	(ar_i2c_read@count)

	line	149
;i2c_ar1000.c: 149: while (BF == 0) {
	goto	l590
	
l591:	
	line	152
	
l3334:	
;i2c_ar1000.c: 152: if (--count == 0) {
	movlw	01h
	movwf	((??_ar_i2c_read+0)+0)
	movlw	0
	movwf	((??_ar_i2c_read+0)+0+1)
	movlw	0
	movwf	((??_ar_i2c_read+0)+0+2)
	movlw	0
	movwf	((??_ar_i2c_read+0)+0+3)
	movf	0+(??_ar_i2c_read+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	(ar_i2c_read@count),f
	movf	1+(??_ar_i2c_read+0)+0,w
	skipc
	incfsz	1+(??_ar_i2c_read+0)+0,w
	goto	u3225
	goto	u3226
u3225:
	subwf	(ar_i2c_read@count+1),f
u3226:
	movf	2+(??_ar_i2c_read+0)+0,w
	skipc
	incfsz	2+(??_ar_i2c_read+0)+0,w
	goto	u3227
	goto	u3228
u3227:
	subwf	(ar_i2c_read@count+2),f
u3228:
	movf	3+(??_ar_i2c_read+0)+0,w
	skipc
	incfsz	3+(??_ar_i2c_read+0)+0,w
	goto	u3229
	goto	u3220
u3229:
	subwf	(ar_i2c_read@count+3),f
u3220:

	movf	((ar_i2c_read@count+3)),w
	iorwf	((ar_i2c_read@count+2)),w
	iorwf	((ar_i2c_read@count+1)),w
	iorwf	((ar_i2c_read@count)),w
	skipz
	goto	u3231
	goto	u3230
u3231:
	goto	l590
u3230:
	line	154
	
l3336:	
;i2c_ar1000.c: 154: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	155
;i2c_ar1000.c: 155: while (PEN == 1);
	goto	l593
	
l594:	
	
l593:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l593
u3240:
	goto	l3338
	
l595:	
	line	157
	
l3338:	
;i2c_ar1000.c: 157: return 0;
	movlw	low(0)
	movwf	(?_ar_i2c_read)
	movlw	high(0)
	movwf	((?_ar_i2c_read))+1
	goto	l572
	
l3340:	
	goto	l572
	line	158
	
l592:	
	line	159
	
l590:	
	line	149
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1184/8)^080h,(1184)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l3334
u3250:
	goto	l3342
	
l596:	
	line	162
	
l3342:	
;i2c_ar1000.c: 158: }
;i2c_ar1000.c: 159: }
;i2c_ar1000.c: 162: ar_received_byte1 = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_ar_i2c_read+0)+0
	movf	(??_ar_i2c_read+0)+0,w
	movwf	(ar_i2c_read@ar_received_byte1)
	line	165
	
l3344:	
;i2c_ar1000.c: 165: ACKDT = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	line	166
	
l3346:	
;i2c_ar1000.c: 166: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7
	line	167
;i2c_ar1000.c: 167: while (ACKEN == 1);
	goto	l597
	
l598:	
	
l597:	
	btfsc	(1164/8)^080h,(1164)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l597
u3260:
	
l599:	
	line	168
;i2c_ar1000.c: 168: RCEN = 1;
	bsf	(1163/8)^080h,(1163)&7
	line	170
	
l3348:	
;i2c_ar1000.c: 170: unsigned long count = 10000L;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ar_i2c_read@count+3)
	movlw	0
	movwf	(ar_i2c_read@count+2)
	movlw	027h
	movwf	(ar_i2c_read@count+1)
	movlw	010h
	movwf	(ar_i2c_read@count)

	line	171
;i2c_ar1000.c: 171: while (BF == 0) {
	goto	l600
	
l601:	
	line	174
	
l3350:	
;i2c_ar1000.c: 174: if (--count == 0) {
	movlw	01h
	movwf	((??_ar_i2c_read+0)+0)
	movlw	0
	movwf	((??_ar_i2c_read+0)+0+1)
	movlw	0
	movwf	((??_ar_i2c_read+0)+0+2)
	movlw	0
	movwf	((??_ar_i2c_read+0)+0+3)
	movf	0+(??_ar_i2c_read+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	subwf	(ar_i2c_read@count),f
	movf	1+(??_ar_i2c_read+0)+0,w
	skipc
	incfsz	1+(??_ar_i2c_read+0)+0,w
	goto	u3275
	goto	u3276
u3275:
	subwf	(ar_i2c_read@count+1),f
u3276:
	movf	2+(??_ar_i2c_read+0)+0,w
	skipc
	incfsz	2+(??_ar_i2c_read+0)+0,w
	goto	u3277
	goto	u3278
u3277:
	subwf	(ar_i2c_read@count+2),f
u3278:
	movf	3+(??_ar_i2c_read+0)+0,w
	skipc
	incfsz	3+(??_ar_i2c_read+0)+0,w
	goto	u3279
	goto	u3270
u3279:
	subwf	(ar_i2c_read@count+3),f
u3270:

	movf	((ar_i2c_read@count+3)),w
	iorwf	((ar_i2c_read@count+2)),w
	iorwf	((ar_i2c_read@count+1)),w
	iorwf	((ar_i2c_read@count)),w
	skipz
	goto	u3281
	goto	u3280
u3281:
	goto	l600
u3280:
	line	176
	
l3352:	
;i2c_ar1000.c: 176: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	177
;i2c_ar1000.c: 177: while (PEN == 1);
	goto	l603
	
l604:	
	
l603:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l603
u3290:
	goto	l3354
	
l605:	
	line	179
	
l3354:	
;i2c_ar1000.c: 179: return 0;
	movlw	low(0)
	movwf	(?_ar_i2c_read)
	movlw	high(0)
	movwf	((?_ar_i2c_read))+1
	goto	l572
	
l3356:	
	goto	l572
	line	180
	
l602:	
	line	181
	
l600:	
	line	171
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1184/8)^080h,(1184)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l3350
u3300:
	goto	l3358
	
l606:	
	line	184
	
l3358:	
;i2c_ar1000.c: 180: }
;i2c_ar1000.c: 181: }
;i2c_ar1000.c: 184: ar_received_byte2 = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_ar_i2c_read+0)+0
	movf	(??_ar_i2c_read+0)+0,w
	movwf	(ar_i2c_read@ar_received_byte2)
	line	187
	
l3360:	
;i2c_ar1000.c: 187: ACKDT = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7
	line	188
	
l3362:	
;i2c_ar1000.c: 188: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7
	line	189
;i2c_ar1000.c: 189: while (ACKEN == 1);
	goto	l607
	
l608:	
	
l607:	
	btfsc	(1164/8)^080h,(1164)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l607
u3310:
	
l609:	
	line	192
;i2c_ar1000.c: 192: PEN = 1;
	bsf	(1162/8)^080h,(1162)&7
	line	193
;i2c_ar1000.c: 193: while (PEN == 1);
	goto	l610
	
l611:	
	
l610:	
	btfsc	(1162/8)^080h,(1162)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l610
u3320:
	goto	l3364
	
l612:	
	line	195
	
l3364:	
;i2c_ar1000.c: 195: ar_received_byte = (ar_received_byte1 << 8);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ar_i2c_read@ar_received_byte1),w
	movwf	(??_ar_i2c_read+0)+0
	clrf	(??_ar_i2c_read+0)+0+1
	movlw	08h
	movwf	btemp+1
u3335:
	clrc
	rlf	(??_ar_i2c_read+0)+0,f
	rlf	(??_ar_i2c_read+0)+1,f
	decfsz	btemp+1,f
	goto	u3335
	movf	0+(??_ar_i2c_read+0)+0,w
	movwf	(ar_i2c_read@ar_received_byte)
	movf	1+(??_ar_i2c_read+0)+0,w
	movwf	(ar_i2c_read@ar_received_byte+1)
	line	196
	
l3366:	
;i2c_ar1000.c: 196: ar_received_byte |= ar_received_byte2;
	movf	(ar_i2c_read@ar_received_byte2),w
	movwf	(??_ar_i2c_read+0)+0
	clrf	(??_ar_i2c_read+0)+0+1
	movf	0+(??_ar_i2c_read+0)+0,w
	iorwf	(ar_i2c_read@ar_received_byte),f
	movf	1+(??_ar_i2c_read+0)+0,w
	iorwf	(ar_i2c_read@ar_received_byte+1),f
	line	199
	
l3368:	
;i2c_ar1000.c: 199: return ar_received_byte;
	movf	(ar_i2c_read@ar_received_byte+1),w
	clrf	(?_ar_i2c_read+1)
	addwf	(?_ar_i2c_read+1)
	movf	(ar_i2c_read@ar_received_byte),w
	clrf	(?_ar_i2c_read)
	addwf	(?_ar_i2c_read)

	goto	l572
	
l3370:	
	line	201
	
l572:	
	return
	opt stack 0
GLOBAL	__end_of_ar_i2c_read
	__end_of_ar_i2c_read:
;; =============== function _ar_i2c_read ends ============

	signat	_ar_i2c_read,8314
	global	_ar_i2c_initialize
psect	text633,local,class=CODE,delta=2
global __ptext633
__ptext633:

;; *************** function _ar_i2c_initialize *****************
;; Defined at:
;;		line 39 in file "C:\Users\Phang\Desktop\9.80\PR 31\i2c_ar1000.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text633
	file	"C:\Users\Phang\Desktop\9.80\PR 31\i2c_ar1000.c"
	line	39
	global	__size_of_ar_i2c_initialize
	__size_of_ar_i2c_initialize	equ	__end_of_ar_i2c_initialize-_ar_i2c_initialize
	
_ar_i2c_initialize:	
	opt	stack 7
; Regs used in _ar_i2c_initialize: [wreg]
	line	41
	
l3284:	
;i2c_ar1000.c: 41: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	42
;i2c_ar1000.c: 42: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7
	line	46
	
l3286:	
;i2c_ar1000.c: 46: SSPADD = 12;
	movlw	(0Ch)
	movwf	(147)^080h	;volatile
	line	49
	
l3288:	
;i2c_ar1000.c: 49: SSPM3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(163/8),(163)&7
	line	50
	
l3290:	
;i2c_ar1000.c: 50: SSPM2 = 0;
	bcf	(162/8),(162)&7
	line	51
	
l3292:	
;i2c_ar1000.c: 51: SSPM1 = 0;
	bcf	(161/8),(161)&7
	line	52
	
l3294:	
;i2c_ar1000.c: 52: SSPM0 = 0;
	bcf	(160/8),(160)&7
	line	55
	
l3296:	
;i2c_ar1000.c: 55: WCOL = 0;
	bcf	(167/8),(167)&7
	line	58
	
l3298:	
;i2c_ar1000.c: 58: SSPOV = 0;
	bcf	(166/8),(166)&7
	line	61
	
l3300:	
;i2c_ar1000.c: 61: SSPEN = 1;
	bsf	(165/8),(165)&7
	line	64
	
l559:	
	return
	opt stack 0
GLOBAL	__end_of_ar_i2c_initialize
	__end_of_ar_i2c_initialize:
;; =============== function _ar_i2c_initialize ends ============

	signat	_ar_i2c_initialize,88
psect	text634,local,class=CODE,delta=2
global __ptext634
__ptext634:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
