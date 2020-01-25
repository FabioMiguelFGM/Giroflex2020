
_main:

;Giroflex2020.c,21 :: 		void main() {
;Giroflex2020.c,23 :: 		CMCON = 0b00000111;
	MOVLW      7
	MOVWF      CMCON+0
;Giroflex2020.c,24 :: 		TRISA = 0b00000000;        //0 COMO SAIDA 1 como entrada
	CLRF       TRISA+0
;Giroflex2020.c,25 :: 		TRISB = 0b00101100;        //0 COMO SAIDA 1 como entrada
	MOVLW      44
	MOVWF      TRISB+0
;Giroflex2020.c,27 :: 		PORTA = 0;
	CLRF       PORTA+0
;Giroflex2020.c,28 :: 		PORTB = 0;
	CLRF       PORTB+0
;Giroflex2020.c,30 :: 		while (1){
L_main0:
;Giroflex2020.c,32 :: 		if (efeitopb == 0){
	BTFSC      RB2_bit+0, BitPos(RB2_bit+0)
	GOTO       L_main2
;Giroflex2020.c,33 :: 		for(a = 0;a < 3; a++){
	CLRF       _a+0
	CLRF       _a+1
L_main3:
	MOVLW      128
	XORWF      _a+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main36
	MOVLW      3
	SUBWF      _a+0, 0
L__main36:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;Giroflex2020.c,34 :: 		s1 = 1;
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,35 :: 		s2 = 1;
	BSF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,36 :: 		s3 = 1;
	BSF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,37 :: 		s4 = 1;
	BSF        RA5_bit+0, BitPos(RA5_bit+0)
;Giroflex2020.c,38 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,39 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,40 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,41 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,42 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,43 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,44 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,45 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,46 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;Giroflex2020.c,47 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,48 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,49 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,50 :: 		s4 = 0;
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
;Giroflex2020.c,51 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,52 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,53 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,54 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,55 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,56 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,57 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,58 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,59 :: 		delay_ms(80);
	MOVLW      104
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	NOP
;Giroflex2020.c,33 :: 		for(a = 0;a < 3; a++){
	INCF       _a+0, 1
	BTFSC      STATUS+0, 2
	INCF       _a+1, 1
;Giroflex2020.c,60 :: 		}//end for
	GOTO       L_main3
L_main4:
;Giroflex2020.c,62 :: 		for(a = 0;a < 3; a++){
	CLRF       _a+0
	CLRF       _a+1
L_main8:
	MOVLW      128
	XORWF      _a+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main37
	MOVLW      3
	SUBWF      _a+0, 0
L__main37:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;Giroflex2020.c,63 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,64 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,65 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,66 :: 		s4 = 0;
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
;Giroflex2020.c,67 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,68 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,69 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,70 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,71 :: 		s9 = 1;
	BSF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,72 :: 		s10 = 1;
	BSF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,73 :: 		s11 = 1;
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,74 :: 		s12 = 1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,75 :: 		delay_ms(100);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	NOP
	NOP
;Giroflex2020.c,76 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,77 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,78 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,79 :: 		s4 = 0;
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
;Giroflex2020.c,80 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,81 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,82 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,83 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,84 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,85 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,86 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,87 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,88 :: 		delay_ms(80);
	MOVLW      104
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	NOP
;Giroflex2020.c,62 :: 		for(a = 0;a < 3; a++){
	INCF       _a+0, 1
	BTFSC      STATUS+0, 2
	INCF       _a+1, 1
;Giroflex2020.c,89 :: 		}//end for
	GOTO       L_main8
L_main9:
;Giroflex2020.c,90 :: 		}//end if
L_main2:
;Giroflex2020.c,92 :: 		if (efeitoptrm == 0){
	BTFSC      RB3_bit+0, BitPos(RB3_bit+0)
	GOTO       L_main13
;Giroflex2020.c,93 :: 		for(a = 0;a < 3; a++){
	CLRF       _a+0
	CLRF       _a+1
L_main14:
	MOVLW      128
	XORWF      _a+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main38
	MOVLW      3
	SUBWF      _a+0, 0
L__main38:
	BTFSC      STATUS+0, 0
	GOTO       L_main15
;Giroflex2020.c,94 :: 		s1 = 1;
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,95 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,96 :: 		s3 = 1;
	BSF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,97 :: 		s4 = 0;
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
;Giroflex2020.c,98 :: 		s5 = 1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,99 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,100 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,101 :: 		s8 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,102 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,103 :: 		s10 = 1;
	BSF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,104 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,105 :: 		s12 = 1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,106 :: 		delay_ms(60);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
;Giroflex2020.c,107 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,108 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,109 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,110 :: 		s4 = 0;
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
;Giroflex2020.c,111 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,112 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,113 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,114 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,115 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,116 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,117 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,118 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,119 :: 		delay_ms(80);
	MOVLW      104
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	NOP
;Giroflex2020.c,93 :: 		for(a = 0;a < 3; a++){
	INCF       _a+0, 1
	BTFSC      STATUS+0, 2
	INCF       _a+1, 1
;Giroflex2020.c,120 :: 		}//end for
	GOTO       L_main14
L_main15:
;Giroflex2020.c,121 :: 		for(a = 0;a < 3; a++){
	CLRF       _a+0
	CLRF       _a+1
L_main19:
	MOVLW      128
	XORWF      _a+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main39
	MOVLW      3
	SUBWF      _a+0, 0
L__main39:
	BTFSC      STATUS+0, 0
	GOTO       L_main20
;Giroflex2020.c,122 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,123 :: 		s2 = 1;
	BSF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,124 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,125 :: 		s4 = 1;
	BSF        RA5_bit+0, BitPos(RA5_bit+0)
;Giroflex2020.c,126 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,127 :: 		s6 = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,128 :: 		s7 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,129 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,130 :: 		s9 = 1;
	BSF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,131 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,132 :: 		s11 = 1;
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,133 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,134 :: 		delay_ms(60);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_main22:
	DECFSZ     R13+0, 1
	GOTO       L_main22
	DECFSZ     R12+0, 1
	GOTO       L_main22
;Giroflex2020.c,135 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,136 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,137 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,138 :: 		s4 = 0;
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
;Giroflex2020.c,139 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,140 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,141 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,142 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,143 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,144 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,145 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,146 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,147 :: 		delay_ms(80);
	MOVLW      104
	MOVWF      R12+0
	MOVLW      228
	MOVWF      R13+0
L_main23:
	DECFSZ     R13+0, 1
	GOTO       L_main23
	DECFSZ     R12+0, 1
	GOTO       L_main23
	NOP
;Giroflex2020.c,121 :: 		for(a = 0;a < 3; a++){
	INCF       _a+0, 1
	BTFSC      STATUS+0, 2
	INCF       _a+1, 1
;Giroflex2020.c,148 :: 		}//end for
	GOTO       L_main19
L_main20:
;Giroflex2020.c,149 :: 		}//end if
L_main13:
;Giroflex2020.c,151 :: 		if (efeitoemer == 0){
	BTFSC      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_main24
;Giroflex2020.c,152 :: 		for(a = 0;a < 3;a++){
	CLRF       _a+0
	CLRF       _a+1
L_main25:
	MOVLW      128
	XORWF      _a+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main40
	MOVLW      3
	SUBWF      _a+0, 0
L__main40:
	BTFSC      STATUS+0, 0
	GOTO       L_main26
;Giroflex2020.c,153 :: 		s1 = 1;
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,154 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,155 :: 		s3 = 1;
	BSF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,156 :: 		s4 = 0;
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
;Giroflex2020.c,157 :: 		s5 = 1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,158 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,159 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,160 :: 		s8 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,161 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,162 :: 		s10 = 1;
	BSF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,163 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,164 :: 		s12 = 1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,165 :: 		delay_ms(30);
	MOVLW      39
	MOVWF      R12+0
	MOVLW      245
	MOVWF      R13+0
L_main28:
	DECFSZ     R13+0, 1
	GOTO       L_main28
	DECFSZ     R12+0, 1
	GOTO       L_main28
;Giroflex2020.c,166 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,167 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,168 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,169 :: 		s4 = 0;
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
;Giroflex2020.c,170 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,171 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,172 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,173 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,174 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,175 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,176 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,177 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,178 :: 		delay_ms(30);
	MOVLW      39
	MOVWF      R12+0
	MOVLW      245
	MOVWF      R13+0
L_main29:
	DECFSZ     R13+0, 1
	GOTO       L_main29
	DECFSZ     R12+0, 1
	GOTO       L_main29
;Giroflex2020.c,152 :: 		for(a = 0;a < 3;a++){
	INCF       _a+0, 1
	BTFSC      STATUS+0, 2
	INCF       _a+1, 1
;Giroflex2020.c,180 :: 		}//end for
	GOTO       L_main25
L_main26:
;Giroflex2020.c,181 :: 		for(a = 0;a < 3;a++){
	CLRF       _a+0
	CLRF       _a+1
L_main30:
	MOVLW      128
	XORWF      _a+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main41
	MOVLW      3
	SUBWF      _a+0, 0
L__main41:
	BTFSC      STATUS+0, 0
	GOTO       L_main31
;Giroflex2020.c,182 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,183 :: 		s2 = 1;
	BSF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,184 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,185 :: 		s4 = 1;
	BSF        RA5_bit+0, BitPos(RA5_bit+0)
;Giroflex2020.c,186 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,187 :: 		s6 = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,188 :: 		s7 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,189 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,190 :: 		s9 = 1;
	BSF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,191 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,192 :: 		s11 = 1;
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,193 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,194 :: 		delay_ms(30);
	MOVLW      39
	MOVWF      R12+0
	MOVLW      245
	MOVWF      R13+0
L_main33:
	DECFSZ     R13+0, 1
	GOTO       L_main33
	DECFSZ     R12+0, 1
	GOTO       L_main33
;Giroflex2020.c,195 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,196 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,197 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,198 :: 		s4 = 0;
	BCF        RA5_bit+0, BitPos(RA5_bit+0)
;Giroflex2020.c,199 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,200 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,201 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,202 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,203 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,204 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,205 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,206 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,207 :: 		delay_ms(30);
	MOVLW      39
	MOVWF      R12+0
	MOVLW      245
	MOVWF      R13+0
L_main34:
	DECFSZ     R13+0, 1
	GOTO       L_main34
	DECFSZ     R12+0, 1
	GOTO       L_main34
;Giroflex2020.c,181 :: 		for(a = 0;a < 3;a++){
	INCF       _a+0, 1
	BTFSC      STATUS+0, 2
	INCF       _a+1, 1
;Giroflex2020.c,209 :: 		}//end for
	GOTO       L_main30
L_main31:
;Giroflex2020.c,210 :: 		}//end if
L_main24:
;Giroflex2020.c,211 :: 		}//end while
	GOTO       L_main0
;Giroflex2020.c,213 :: 		}//end  main
L_end_main:
	GOTO       $+0
; end of _main
