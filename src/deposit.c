#include "deposit.h"

float calc(float summa, int srok)
{
    float out=0;
    switch (srok)
    {
        case 1: out = summa - ((summa/100)*10); break;
        case 2: out = summa + ((summa/100)*2); break;
        case 3: out = summa + ((summa/100)*6); break;
        case 4: out = summa + ((summa/100)*12); break;
    }
    return out;
}

int chooseSrok(int srok)
{
    if ((srok <= 30) && (srok >= 0))
         {
             srok = 1; //* Срок от 0 до 30
	 }
     if ((srok <= 120) && (srok >= 31))
         {
             srok = 2; //* Срок от 31 до 120
	 }
     if ((srok <= 240) && (srok >= 121))
	 {
             srok = 3; //* Срок от 121 до 240
	 }
     if ((srok <= 365) && (srok >= 241))
     {
             srok = 4; //* Срок от 241 до 365
	 }
     return srok;
}
