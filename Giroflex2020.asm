
_main:

;Giroflex2020.c,21 :: 		void main() {
;Giroflex2020.c,23 :: 		CMCON = 0b00000111;
	MOVLW      7
	MOVWF      CMCON+0
;Giroflex2020.c,24 :: 		TRISA = 0b00100000;        //0 COMO SAIDA 1 como entrada
	MOVLW      32
	MOVWF      TRISA+0
;Giroflex2020.c,25 :: 		TRISB = 0b00100100;        //0 COMO SAIDA 1 como entrada
	MOVLW      36
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
	GOTO       L__main56
	MOVLW      3
	SUBWF      _a+0, 0
L__main56:
	BTFSC      STATUS+0, 0
	GOTO       L_main4
;Giroflex2020.c,34 :: 		s1 = 1;
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,35 :: 		s2 = 1;
	BSF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,36 :: 		s3 = 1;
	BSF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,37 :: 		s4 = 1;
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
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
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
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
	GOTO       L__main57
	MOVLW      3
	SUBWF      _a+0, 0
L__main57:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;Giroflex2020.c,63 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,64 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,65 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,66 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
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
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
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
	BTFSC      RA5_bit+0, BitPos(RA5_bit+0)
	GOTO       L_main13
;Giroflex2020.c,93 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,94 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,95 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,96 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,97 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,98 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,99 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,100 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,101 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,102 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,103 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,104 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,105 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
;Giroflex2020.c,106 :: 		s1 = 1;
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,107 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,108 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,109 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,110 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,111 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,112 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,113 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,114 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,115 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,116 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,117 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,118 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	DECFSZ     R11+0, 1
	GOTO       L_main15
	NOP
;Giroflex2020.c,119 :: 		s1 = 1;
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,120 :: 		s2 = 1;
	BSF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,121 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,122 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,123 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,124 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,125 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,126 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,127 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,128 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,129 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,130 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,131 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	DECFSZ     R11+0, 1
	GOTO       L_main16
	NOP
;Giroflex2020.c,132 :: 		s1 = 1;
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,133 :: 		s2 = 1;
	BSF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,134 :: 		s3 = 1;
	BSF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,135 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,136 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,137 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,138 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,139 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,140 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,141 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,142 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,143 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,144 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
	NOP
;Giroflex2020.c,145 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,146 :: 		s2 = 1;
	BSF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,147 :: 		s3 = 1;
	BSF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,148 :: 		s4 = 1;
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,149 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,150 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,151 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,152 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,153 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,154 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,155 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,156 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,157 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
;Giroflex2020.c,158 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,159 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,160 :: 		s3 = 1;
	BSF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,161 :: 		s4 = 1;
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,162 :: 		s5 = 1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,163 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,164 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,165 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,166 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,167 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,168 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,169 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,170 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
;Giroflex2020.c,171 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,172 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,173 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,174 :: 		s4 = 1;
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,175 :: 		s5 = 1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,176 :: 		s6 = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,177 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,178 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,179 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,180 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,181 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,182 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,183 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main20:
	DECFSZ     R13+0, 1
	GOTO       L_main20
	DECFSZ     R12+0, 1
	GOTO       L_main20
	DECFSZ     R11+0, 1
	GOTO       L_main20
	NOP
;Giroflex2020.c,184 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,185 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,186 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,187 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,188 :: 		s5 = 1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,189 :: 		s6 = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,190 :: 		s7 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,191 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,192 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,193 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,194 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,195 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,196 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main21:
	DECFSZ     R13+0, 1
	GOTO       L_main21
	DECFSZ     R12+0, 1
	GOTO       L_main21
	DECFSZ     R11+0, 1
	GOTO       L_main21
	NOP
;Giroflex2020.c,197 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,198 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,199 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,200 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,201 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,202 :: 		s6 = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,203 :: 		s7 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,204 :: 		s8 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,205 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,206 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,207 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,208 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,209 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main22:
	DECFSZ     R13+0, 1
	GOTO       L_main22
	DECFSZ     R12+0, 1
	GOTO       L_main22
	DECFSZ     R11+0, 1
	GOTO       L_main22
	NOP
;Giroflex2020.c,210 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,211 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,212 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,213 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,214 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,215 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,216 :: 		s7 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,217 :: 		s8 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,218 :: 		s9 = 1;
	BSF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,219 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,220 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,221 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,222 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main23:
	DECFSZ     R13+0, 1
	GOTO       L_main23
	DECFSZ     R12+0, 1
	GOTO       L_main23
	DECFSZ     R11+0, 1
	GOTO       L_main23
	NOP
;Giroflex2020.c,223 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,224 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,225 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,226 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,227 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,228 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,229 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,230 :: 		s8 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,231 :: 		s9 = 1;
	BSF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,232 :: 		s10 = 1;
	BSF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,233 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,234 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,235 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main24:
	DECFSZ     R13+0, 1
	GOTO       L_main24
	DECFSZ     R12+0, 1
	GOTO       L_main24
	DECFSZ     R11+0, 1
	GOTO       L_main24
	NOP
;Giroflex2020.c,236 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,237 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,238 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,239 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,240 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,241 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,242 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,243 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,244 :: 		s9 = 1;
	BSF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,245 :: 		s10 = 1;
	BSF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,246 :: 		s11 = 1;
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,247 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,248 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	DECFSZ     R11+0, 1
	GOTO       L_main25
	NOP
;Giroflex2020.c,249 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,250 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,251 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,252 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,253 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,254 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,255 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,256 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,257 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,258 :: 		s10 = 1;
	BSF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,259 :: 		s11 = 1;
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,260 :: 		s12 = 1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,261 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main26:
	DECFSZ     R13+0, 1
	GOTO       L_main26
	DECFSZ     R12+0, 1
	GOTO       L_main26
	DECFSZ     R11+0, 1
	GOTO       L_main26
	NOP
;Giroflex2020.c,262 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,263 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,264 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,265 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,266 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,267 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,268 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,269 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,270 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,271 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,272 :: 		s11 = 1;
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,273 :: 		s12 = 1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,274 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	DECFSZ     R11+0, 1
	GOTO       L_main27
	NOP
;Giroflex2020.c,275 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,276 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,277 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,278 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,279 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,280 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,281 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,282 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,283 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,284 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,285 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,286 :: 		s12 = 1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,287 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main28:
	DECFSZ     R13+0, 1
	GOTO       L_main28
	DECFSZ     R12+0, 1
	GOTO       L_main28
	DECFSZ     R11+0, 1
	GOTO       L_main28
	NOP
;Giroflex2020.c,288 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,289 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,290 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,291 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,292 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,293 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,294 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,295 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,296 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,297 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,298 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,299 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,300 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main29:
	DECFSZ     R13+0, 1
	GOTO       L_main29
	DECFSZ     R12+0, 1
	GOTO       L_main29
	DECFSZ     R11+0, 1
	GOTO       L_main29
	NOP
;Giroflex2020.c,301 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,302 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,303 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,304 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,305 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,306 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,307 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,308 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,309 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,310 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,311 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,312 :: 		s12 = 1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,313 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main30:
	DECFSZ     R13+0, 1
	GOTO       L_main30
	DECFSZ     R12+0, 1
	GOTO       L_main30
	DECFSZ     R11+0, 1
	GOTO       L_main30
	NOP
;Giroflex2020.c,314 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,315 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,316 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,317 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,318 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,319 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,320 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,321 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,322 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,323 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,324 :: 		s11 = 1;
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,325 :: 		s12 = 1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,326 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main31:
	DECFSZ     R13+0, 1
	GOTO       L_main31
	DECFSZ     R12+0, 1
	GOTO       L_main31
	DECFSZ     R11+0, 1
	GOTO       L_main31
	NOP
;Giroflex2020.c,327 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,328 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,329 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,330 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,331 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,332 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,333 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,334 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,335 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,336 :: 		s10 = 1;
	BSF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,337 :: 		s11 = 1;
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,338 :: 		s12 = 1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,339 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main32:
	DECFSZ     R13+0, 1
	GOTO       L_main32
	DECFSZ     R12+0, 1
	GOTO       L_main32
	DECFSZ     R11+0, 1
	GOTO       L_main32
	NOP
;Giroflex2020.c,340 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,341 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,342 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,343 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,344 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,345 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,346 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,347 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,348 :: 		s9 = 1;
	BSF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,349 :: 		s10 = 1;
	BSF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,350 :: 		s11 = 1;
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,351 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,352 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main33:
	DECFSZ     R13+0, 1
	GOTO       L_main33
	DECFSZ     R12+0, 1
	GOTO       L_main33
	DECFSZ     R11+0, 1
	GOTO       L_main33
	NOP
;Giroflex2020.c,353 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,354 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,355 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,356 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,357 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,358 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,359 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,360 :: 		s8 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,361 :: 		s9 = 1;
	BSF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,362 :: 		s10 = 1;
	BSF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,363 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,364 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,365 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main34:
	DECFSZ     R13+0, 1
	GOTO       L_main34
	DECFSZ     R12+0, 1
	GOTO       L_main34
	DECFSZ     R11+0, 1
	GOTO       L_main34
	NOP
;Giroflex2020.c,366 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,367 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,368 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,369 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,370 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,371 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,372 :: 		s7 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,373 :: 		s8 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,374 :: 		s9 = 1;
	BSF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,375 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,376 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,377 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,378 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main35:
	DECFSZ     R13+0, 1
	GOTO       L_main35
	DECFSZ     R12+0, 1
	GOTO       L_main35
	DECFSZ     R11+0, 1
	GOTO       L_main35
	NOP
;Giroflex2020.c,379 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,380 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,381 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,382 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,383 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,384 :: 		s6 = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,385 :: 		s7 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,386 :: 		s8 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,387 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,388 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,389 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,390 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,391 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main36:
	DECFSZ     R13+0, 1
	GOTO       L_main36
	DECFSZ     R12+0, 1
	GOTO       L_main36
	DECFSZ     R11+0, 1
	GOTO       L_main36
	NOP
;Giroflex2020.c,392 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,393 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,394 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,395 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,396 :: 		s5 = 1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,397 :: 		s6 = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,398 :: 		s7 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,399 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,400 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,401 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,402 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,403 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,404 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main37:
	DECFSZ     R13+0, 1
	GOTO       L_main37
	DECFSZ     R12+0, 1
	GOTO       L_main37
	DECFSZ     R11+0, 1
	GOTO       L_main37
	NOP
;Giroflex2020.c,405 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,406 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,407 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,408 :: 		s4 = 1;
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,409 :: 		s5 = 1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,410 :: 		s6 = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,411 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,412 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,413 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,414 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,415 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,416 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,417 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main38:
	DECFSZ     R13+0, 1
	GOTO       L_main38
	DECFSZ     R12+0, 1
	GOTO       L_main38
	DECFSZ     R11+0, 1
	GOTO       L_main38
	NOP
;Giroflex2020.c,418 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,419 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,420 :: 		s3 = 1;
	BSF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,421 :: 		s4 = 1;
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,422 :: 		s5 = 1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,423 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,424 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,425 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,426 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,427 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,428 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,429 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,430 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main39:
	DECFSZ     R13+0, 1
	GOTO       L_main39
	DECFSZ     R12+0, 1
	GOTO       L_main39
	DECFSZ     R11+0, 1
	GOTO       L_main39
	NOP
;Giroflex2020.c,431 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,432 :: 		s2 = 1;
	BSF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,433 :: 		s3 = 1;
	BSF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,434 :: 		s4 = 1;
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,435 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,436 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,437 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,438 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,439 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,440 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,441 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,442 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,443 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main40:
	DECFSZ     R13+0, 1
	GOTO       L_main40
	DECFSZ     R12+0, 1
	GOTO       L_main40
	DECFSZ     R11+0, 1
	GOTO       L_main40
	NOP
;Giroflex2020.c,444 :: 		s1 = 1;
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,445 :: 		s2 = 1;
	BSF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,446 :: 		s3 = 1;
	BSF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,447 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,448 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,449 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,450 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,451 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,452 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,453 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,454 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,455 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,456 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main41:
	DECFSZ     R13+0, 1
	GOTO       L_main41
	DECFSZ     R12+0, 1
	GOTO       L_main41
	DECFSZ     R11+0, 1
	GOTO       L_main41
	NOP
;Giroflex2020.c,457 :: 		s1 = 1;
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,458 :: 		s2 = 1;
	BSF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,459 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,460 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,461 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,462 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,463 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,464 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,465 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,466 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,467 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,468 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,469 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main42:
	DECFSZ     R13+0, 1
	GOTO       L_main42
	DECFSZ     R12+0, 1
	GOTO       L_main42
	DECFSZ     R11+0, 1
	GOTO       L_main42
	NOP
;Giroflex2020.c,470 :: 		s1 = 1;
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,471 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,472 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,473 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,474 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,475 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,476 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,477 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,478 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,479 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,480 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,481 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,482 :: 		delay_ms(200);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main43:
	DECFSZ     R13+0, 1
	GOTO       L_main43
	DECFSZ     R12+0, 1
	GOTO       L_main43
	DECFSZ     R11+0, 1
	GOTO       L_main43
	NOP
;Giroflex2020.c,484 :: 		}//end if
L_main13:
;Giroflex2020.c,486 :: 		if (efeitoemer == 0){
	BTFSC      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_main44
;Giroflex2020.c,487 :: 		for(a = 0;a < 3;a++){
	CLRF       _a+0
	CLRF       _a+1
L_main45:
	MOVLW      128
	XORWF      _a+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main58
	MOVLW      3
	SUBWF      _a+0, 0
L__main58:
	BTFSC      STATUS+0, 0
	GOTO       L_main46
;Giroflex2020.c,488 :: 		s1 = 1;
	BSF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,489 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,490 :: 		s3 = 1;
	BSF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,491 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,492 :: 		s5 = 1;
	BSF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,493 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,494 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,495 :: 		s8 = 1;
	BSF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,496 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,497 :: 		s10 = 1;
	BSF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,498 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,499 :: 		s12 = 1;
	BSF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,500 :: 		delay_ms(30);
	MOVLW      39
	MOVWF      R12+0
	MOVLW      245
	MOVWF      R13+0
L_main48:
	DECFSZ     R13+0, 1
	GOTO       L_main48
	DECFSZ     R12+0, 1
	GOTO       L_main48
;Giroflex2020.c,501 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,502 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,503 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,504 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,505 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,506 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,507 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,508 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,509 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,510 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,511 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,512 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,513 :: 		delay_ms(30);
	MOVLW      39
	MOVWF      R12+0
	MOVLW      245
	MOVWF      R13+0
L_main49:
	DECFSZ     R13+0, 1
	GOTO       L_main49
	DECFSZ     R12+0, 1
	GOTO       L_main49
;Giroflex2020.c,487 :: 		for(a = 0;a < 3;a++){
	INCF       _a+0, 1
	BTFSC      STATUS+0, 2
	INCF       _a+1, 1
;Giroflex2020.c,515 :: 		}//end for
	GOTO       L_main45
L_main46:
;Giroflex2020.c,516 :: 		for(a = 0;a < 3;a++){
	CLRF       _a+0
	CLRF       _a+1
L_main50:
	MOVLW      128
	XORWF      _a+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main59
	MOVLW      3
	SUBWF      _a+0, 0
L__main59:
	BTFSC      STATUS+0, 0
	GOTO       L_main51
;Giroflex2020.c,517 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,518 :: 		s2 = 1;
	BSF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,519 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,520 :: 		s4 = 1;
	BSF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,521 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,522 :: 		s6 = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,523 :: 		s7 = 1;
	BSF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,524 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,525 :: 		s9 = 1;
	BSF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,526 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,527 :: 		s11 = 1;
	BSF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,528 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,529 :: 		delay_ms(30);
	MOVLW      39
	MOVWF      R12+0
	MOVLW      245
	MOVWF      R13+0
L_main53:
	DECFSZ     R13+0, 1
	GOTO       L_main53
	DECFSZ     R12+0, 1
	GOTO       L_main53
;Giroflex2020.c,530 :: 		s1 = 0;
	BCF        RA2_bit+0, BitPos(RA2_bit+0)
;Giroflex2020.c,531 :: 		s2 = 0;
	BCF        RA3_bit+0, BitPos(RA3_bit+0)
;Giroflex2020.c,532 :: 		s3 = 0;
	BCF        RA4_bit+0, BitPos(RA4_bit+0)
;Giroflex2020.c,533 :: 		s4 = 0;
	BCF        RB3_bit+0, BitPos(RB3_bit+0)
;Giroflex2020.c,534 :: 		s5 = 0;
	BCF        RB0_bit+0, BitPos(RB0_bit+0)
;Giroflex2020.c,535 :: 		s6 = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;Giroflex2020.c,536 :: 		s7 = 0;
	BCF        RB6_bit+0, BitPos(RB6_bit+0)
;Giroflex2020.c,537 :: 		s8 = 0;
	BCF        RB7_bit+0, BitPos(RB7_bit+0)
;Giroflex2020.c,538 :: 		s9 = 0;
	BCF        RA6_bit+0, BitPos(RA6_bit+0)
;Giroflex2020.c,539 :: 		s10 = 0;
	BCF        RA7_bit+0, BitPos(RA7_bit+0)
;Giroflex2020.c,540 :: 		s11 = 0;
	BCF        RA0_bit+0, BitPos(RA0_bit+0)
;Giroflex2020.c,541 :: 		s12 = 0;
	BCF        RA1_bit+0, BitPos(RA1_bit+0)
;Giroflex2020.c,542 :: 		delay_ms(30);
	MOVLW      39
	MOVWF      R12+0
	MOVLW      245
	MOVWF      R13+0
L_main54:
	DECFSZ     R13+0, 1
	GOTO       L_main54
	DECFSZ     R12+0, 1
	GOTO       L_main54
;Giroflex2020.c,516 :: 		for(a = 0;a < 3;a++){
	INCF       _a+0, 1
	BTFSC      STATUS+0, 2
	INCF       _a+1, 1
;Giroflex2020.c,544 :: 		}//end for
	GOTO       L_main50
L_main51:
;Giroflex2020.c,545 :: 		}//end if
L_main44:
;Giroflex2020.c,546 :: 		}//end while
	GOTO       L_main0
;Giroflex2020.c,548 :: 		}//end  main
L_end_main:
	GOTO       $+0
; end of _main
