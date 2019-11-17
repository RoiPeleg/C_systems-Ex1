#include <stdio.h>
#include "myMath.h"
int main()
{
    double a = 0.0;
    printf("tt %f\n", Exp(-2));
    printf("2tt %f\n", Pow(2.0,-1));
    printf("Please insert a real number: ");
    scanf("%lf", &a);
    double f = 0.0;
    f = sub(add((float)Exp((int)a), (float)Pow((int)a, 3)), (float)2);
    printf("The value of f(x)= e^x + x^3 - 2 at the point %.4f is: %.4f\n", a, f);
    f = add(mul(3,a), mul(2,Pow(a,2)));
    printf("The value of f(x)= 3x + 2x^2 at the point %.4f is: %.4f\n", a, f);
    f = sub(div(mul(4,Pow(a,3)),5),mul(2,a));
    printf("The value of f(x)= (4x^3)/5 - 2x at the point %.4f is: %.4f\n", a, f);
    return 0;
}