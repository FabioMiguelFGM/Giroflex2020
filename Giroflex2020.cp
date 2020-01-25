#line 1 "C:/Users/Public/Documents/Mikroelektronika/Giroflex2020/Giroflex2020.c"
#line 19 "C:/Users/Public/Documents/Mikroelektronika/Giroflex2020/Giroflex2020.c"
int a;

void main() {

 CMCON = 0b00000111;
 TRISA = 0b00000000;
 TRISB = 0b00101100;

 PORTA = 0;
 PORTB = 0;

 while (1){

 if ( RB2_bit  == 0){
 for(a = 0;a < 3; a++){
  RA2_bit  = 1;
  RA3_bit  = 1;
  RA4_bit  = 1;
  RA5_bit  = 1;
  RB0_bit  = 0;
  RB1_bit  = 0;
  RB6_bit  = 0;
  RB7_bit  = 0;
  RA6_bit  = 0;
  RA7_bit  = 0;
  RA0_bit  = 0;
  RA1_bit  = 0;
 delay_ms(100);
  RA2_bit  = 0;
  RA3_bit  = 0;
  RA4_bit  = 0;
  RA5_bit  = 0;
  RB0_bit  = 0;
  RB1_bit  = 0;
  RB6_bit  = 0;
  RB7_bit  = 0;
  RA6_bit  = 0;
  RA7_bit  = 0;
  RA0_bit  = 0;
  RA1_bit  = 0;
 delay_ms(80);
 }

 for(a = 0;a < 3; a++){
  RA2_bit  = 0;
  RA3_bit  = 0;
  RA4_bit  = 0;
  RA5_bit  = 0;
  RB0_bit  = 0;
  RB1_bit  = 0;
  RB6_bit  = 0;
  RB7_bit  = 0;
  RA6_bit  = 1;
  RA7_bit  = 1;
  RA0_bit  = 1;
  RA1_bit  = 1;
 delay_ms(100);
  RA2_bit  = 0;
  RA3_bit  = 0;
  RA4_bit  = 0;
  RA5_bit  = 0;
  RB0_bit  = 0;
  RB1_bit  = 0;
  RB6_bit  = 0;
  RB7_bit  = 0;
  RA6_bit  = 0;
  RA7_bit  = 0;
  RA0_bit  = 0;
  RA1_bit  = 0;
 delay_ms(80);
 }
 }

 if ( RB3_bit  == 0){
 for(a = 0;a < 3; a++){
  RA2_bit  = 1;
  RA3_bit  = 0;
  RA4_bit  = 1;
  RA5_bit  = 0;
  RB0_bit  = 1;
  RB1_bit  = 0;
  RB6_bit  = 0;
  RB7_bit  = 1;
  RA6_bit  = 0;
  RA7_bit  = 1;
  RA0_bit  = 0;
  RA1_bit  = 1;
 delay_ms(60);
  RA2_bit  = 0;
  RA3_bit  = 0;
  RA4_bit  = 0;
  RA5_bit  = 0;
  RB0_bit  = 0;
  RB1_bit  = 0;
  RB6_bit  = 0;
  RB7_bit  = 0;
  RA6_bit  = 0;
  RA7_bit  = 0;
  RA0_bit  = 0;
  RA1_bit  = 0;
 delay_ms(80);
 }
 for(a = 0;a < 3; a++){
  RA2_bit  = 0;
  RA3_bit  = 1;
  RA4_bit  = 0;
  RA5_bit  = 1;
  RB0_bit  = 0;
  RB1_bit  = 1;
  RB6_bit  = 1;
  RB7_bit  = 0;
  RA6_bit  = 1;
  RA7_bit  = 0;
  RA0_bit  = 1;
  RA1_bit  = 0;
 delay_ms(60);
  RA2_bit  = 0;
  RA3_bit  = 0;
  RA4_bit  = 0;
  RA5_bit  = 0;
  RB0_bit  = 0;
  RB1_bit  = 0;
  RB6_bit  = 0;
  RB7_bit  = 0;
  RA6_bit  = 0;
  RA7_bit  = 0;
  RA0_bit  = 0;
  RA1_bit  = 0;
 delay_ms(80);
 }
 }

 if ( RB5_bit  == 0){
 for(a = 0;a < 3;a++){
  RA2_bit  = 1;
  RA3_bit  = 0;
  RA4_bit  = 1;
  RA5_bit  = 0;
  RB0_bit  = 1;
  RB1_bit  = 0;
  RB6_bit  = 0;
  RB7_bit  = 1;
  RA6_bit  = 0;
  RA7_bit  = 1;
  RA0_bit  = 0;
  RA1_bit  = 1;
 delay_ms(30);
  RA2_bit  = 0;
  RA3_bit  = 0;
  RA4_bit  = 0;
  RA5_bit  = 0;
  RB0_bit  = 0;
  RB1_bit  = 0;
  RB6_bit  = 0;
  RB7_bit  = 0;
  RA6_bit  = 0;
  RA7_bit  = 0;
  RA0_bit  = 0;
  RA1_bit  = 0;
 delay_ms(30);

 }
 for(a = 0;a < 3;a++){
  RA2_bit  = 0;
  RA3_bit  = 1;
  RA4_bit  = 0;
  RA5_bit  = 1;
  RB0_bit  = 0;
  RB1_bit  = 1;
  RB6_bit  = 1;
  RB7_bit  = 0;
  RA6_bit  = 1;
  RA7_bit  = 0;
  RA0_bit  = 1;
  RA1_bit  = 0;
 delay_ms(30);
  RA2_bit  = 0;
  RA3_bit  = 0;
  RA4_bit  = 0;
  RA5_bit  = 0;
  RB0_bit  = 0;
  RB1_bit  = 0;
  RB6_bit  = 0;
  RB7_bit  = 0;
  RA6_bit  = 0;
  RA7_bit  = 0;
  RA0_bit  = 0;
  RA1_bit  = 0;
 delay_ms(30);

 }
 }
 }

}
