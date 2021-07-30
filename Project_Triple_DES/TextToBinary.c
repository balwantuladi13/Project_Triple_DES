#include<stdio.h>
FILE *f1;
FILE *f2;

long long convertDecimalToBinary(int n)
{
    long long binaryNumber = 0;
    int z;
    int remainder, i = 1, step = 1;
    while (n!=0)
    {
        remainder = n%2;
       
        n /= 2;
        binaryNumber += remainder*i;
        i *= 10;
        step++;
    }
    z=8-step;
    for(int j=0;j<z;j++)
      fprintf(f2,"%d",0);
      fprintf(f2,"%lld",binaryNumber);
    return binaryNumber;
}

int main()
{
  f1= fopen("input.txt","r");
  f2 =fopen("output.txt","w");
  
  char A[8];
  int B[8],i,a,c;
  for(i=0;i<8;i++){
      
     fscanf(f1,"%c",&A[i]);
     if(A[i]=='\n')
       break;
      a=i+1;
  }
  for( i=0;i<a;i++)
    {
	  c =  convertDecimalToBinary(A[i]);
	}
   if(a<8)
   {
     for(i=a;i<8;i++)
        fprintf(f2,"%08d",0);
   }
    return 0;
}
