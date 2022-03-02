#include<stdio.h>

char a[10]="BaSiC";
char b[10]="MinIX";

int main()
{
	int i=0,cx=5;
	do
	{
		a[i]=a[i]&0xDF;		//& 11011111
		b[i]=b[i]|0x20;		//| 00100000
		i++;
	}while(cx--,cx!=0);
	
	printf("%s\n",a);
	printf("%s\n",b);
}
