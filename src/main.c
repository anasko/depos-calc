#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#include "deposit.h"

int main()
{
     do{
        int srok=0;
        float summa = 0;
        printf("Введите сумму вклада=");
        scanf("%f",&summa);    
        printf("Введите срок вклада=");
        scanf("%d",&srok);

        if((srok<=365)&&(summa>=1000)){
            printf("Сумма вклада: %f\n", calc(summa, chooseSrok(srok)));
            break;
        }
        else
            printf("Введите коректно данные\n");

        }while(1);   
}
