#include <stdio.h>

void main(void)
{
 unsigned long x = 0xffffffffffffffff;
 long y = 0x7fffffffffffffff;
 long z = 0x7fffffffffffffff;
 unsigned long t = 0xffffffff00000000;
 unsigned long u = 0x00000000ffffffff;
 printf("64bit unsined long full:0x%lx\n",x);
 x = x - 2;
 printf("64bit unsined long full - 2:0x%lx\n",x);
 z = z *2; 
 printf("64bit sined long full*2:0x%lx\n",z);
 z = z +1; 
 printf("64bit sined long full*2+1:0x%lx\n",z);
 printf("64bit sined long full*2+1 & head of 16:0x%lx\n",z&t);
 printf("64bit sined long full*2+1 & tail of 16:0x%lx\n",z&u);
}
