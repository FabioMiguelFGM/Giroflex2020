#define s1 RA2_bit
#define s2 RA3_bit              /////Giroflex 2020 Asa Vermelho 3 efeitos ///
#define s3 RA4_bit     // open drain                  /////  17/01/2020  ////// \\ atualizado17/01/2020
#define s4 RA5_bit
#define s5 RB0_bit
#define s6 RB1_bit

#define s7 RB6_bit
#define s8 RB7_bit
#define s9 RA6_bit
#define s10 RA7_bit
#define s11 RA0_bit
#define s12 RA1_bit

#define efeitopb RB2_bit
#define efeitoptrm RB3_bit
#define efeitoemer RB5_bit

int a;

void main() {

     CMCON = 0b00000111;
     TRISA = 0b00000000;        //0 COMO SAIDA 1 como entrada
     TRISB = 0b00101100;        //0 COMO SAIDA 1 como entrada

     PORTA = 0;
     PORTB = 0;

     while (1){

           if (efeitopb == 0){ 
              for(a = 0;a < 3; a++){
                    s1 = 1;
                    s2 = 1;
                    s3 = 1;
                    s4 = 1;
                    s5 = 0;
                    s6 = 0;
                    s7 = 0;
                    s8 = 0;
                    s9 = 0;
                    s10 = 0;
                    s11 = 0;
                    s12 = 0;
                    delay_ms(100);
                    s1 = 0;
                    s2 = 0;
                    s3 = 0;
                    s4 = 0;
                    s5 = 0;
                    s6 = 0;
                    s7 = 0;
                    s8 = 0;
                    s9 = 0;
                    s10 = 0;
                    s11 = 0;
                    s12 = 0;
                    delay_ms(80);
                 }//end for
                 
                 for(a = 0;a < 3; a++){
                    s1 = 0;
                    s2 = 0;
                    s3 = 0;
                    s4 = 0;
                    s5 = 0;
                    s6 = 0;
                    s7 = 0;
                    s8 = 0;
                    s9 = 1;
                    s10 = 1;
                    s11 = 1;
                    s12 = 1;
                    delay_ms(100);
                    s1 = 0;
                    s2 = 0;
                    s3 = 0;
                    s4 = 0;
                    s5 = 0;
                    s6 = 0;
                    s7 = 0;
                    s8 = 0;
                    s9 = 0;
                    s10 = 0;
                    s11 = 0;
                    s12 = 0;
                    delay_ms(80);
                 }//end for
           }//end if
           
           if (efeitoptrm == 0){
              for(a = 0;a < 3; a++){
              s1 = 1;
              s2 = 0;
              s3 = 1;
              s4 = 0;
              s5 = 1;
              s6 = 0;
              s7 = 0;
              s8 = 1;
              s9 = 0;
              s10 = 1;
              s11 = 0;
              s12 = 1;
              delay_ms(60);
              s1 = 0;
              s2 = 0;
              s3 = 0;
              s4 = 0;
              s5 = 0;
              s6 = 0;
              s7 = 0;
              s8 = 0;
              s9 = 0;
              s10 = 0;
              s11 = 0;
              s12 = 0;
              delay_ms(80);
              }//end for
              for(a = 0;a < 3; a++){
              s1 = 0;
              s2 = 1;
              s3 = 0;
              s4 = 1;
              s5 = 0;
              s6 = 1;
              s7 = 1;
              s8 = 0;
              s9 = 1;
              s10 = 0;
              s11 = 1;
              s12 = 0;
              delay_ms(60);
              s1 = 0;
              s2 = 0;
              s3 = 0;
              s4 = 0;
              s5 = 0;
              s6 = 0;
              s7 = 0;
              s8 = 0;
              s9 = 0;
              s10 = 0;
              s11 = 0;
              s12 = 0;
              delay_ms(80);
              }//end for
           }//end if
           
           if (efeitoemer == 0){
           for(a = 0;a < 3;a++){
              s1 = 1;
              s2 = 0;
              s3 = 1;
              s4 = 0;
              s5 = 1;
              s6 = 0;
              s7 = 0;
              s8 = 1;
              s9 = 0;
              s10 = 1;
              s11 = 0;
              s12 = 1;
              delay_ms(30);
              s1 = 0;
              s2 = 0;
              s3 = 0;
              s4 = 0;
              s5 = 0;
              s6 = 0;
              s7 = 0;
              s8 = 0;
              s9 = 0;
              s10 = 0;
              s11 = 0;
              s12 = 0;
              delay_ms(30);

           }//end for
           for(a = 0;a < 3;a++){
              s1 = 0;
              s2 = 1;
              s3 = 0;
              s4 = 1;
              s5 = 0;
              s6 = 1;
              s7 = 1;
              s8 = 0;
              s9 = 1;
              s10 = 0;
              s11 = 1;
              s12 = 0;
              delay_ms(30);
              s1 = 0;
              s2 = 0;
              s3 = 0;
              s4 = 0;
              s5 = 0;
              s6 = 0;
              s7 = 0;
              s8 = 0;
              s9 = 0;
              s10 = 0;
              s11 = 0;
              s12 = 0;
              delay_ms(30);

           }//end for
           }//end if
     }//end while

}//end  main