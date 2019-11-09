#include "myMath.h"
#define e 2.71
double Exp(int x)
{
    double ans = 1;
    for (int i = 0; i < x; i++)
    {
        ans = ans * e;
    }
    return ans;
}
double Pow(double x, int y)
{
    double ans = 1;
    for (int i = 0; i < y; i++)
    {
        ans = ans * x;
    }
    return ans;
}