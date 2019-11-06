#include <stdio.h>
#include "myMath.h"
int main()
{
    double a = 0.0;
    printf("Please insert a real number: ");
    scanf("%lf", &a);
    printf("\n");
    double f1 = 0.0;
    f1 = sub(add((float)exp((int)a), (float)pow((int)a, 3)), (float)2);
    return 0;
}