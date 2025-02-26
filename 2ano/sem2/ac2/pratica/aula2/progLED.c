void delay(unsigned int ms)
{
resetCoreTimer();
while(readCoreTimer() < K * ms);
}


int main (void){
	while(1){
		configD11();
		outD11(1);
		delay(500);
		outD11(0);
		delay(600);
		outD11(1);
		delay(200);
		outD11(0);
		delay(150);
		outD11(1);
		delay(100);
		outD11(0);
		delay(600);
	}
}
