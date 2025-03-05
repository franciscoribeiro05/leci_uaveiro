#include <detpic32.h>


int main(void){

        TRISC = TRISC & 0xBFFF; // 1011 1111 1111 1111

        LATC = LATC & 0XBFFF;

        while(1){
            resetCoreTimer();
            
            while(readCoreTimer() < 10000000);
            
            LATC = LATC^0x4000;
        }

        return 0;
}