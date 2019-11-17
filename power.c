#include "myMath.h"
#define e 2.71
double Exp(int x)
{
    double ans = 1;
    if (x == 0)
    {
       return 1;
        
    }
    if (x > 0)
    {
        for (int i = 0; i < x; i++)
        {
            ans = ans * e;
        }
    }
    if(x<0)
    {
        for (int i = 0; i < -x; i++)
        {
            ans = ans / e;
        }
    }

    return ans;
}
double Pow(double x, int y)
{
    double ans = 1;
    if (y == 0)
    {
        ans = 1;
    }
    else if (y > 0)
    {
        for (int i = 0; i < y; i++)
        {
            ans = ans * x;
        }
    }
    else
    {
        for (int i = 0; i < -y; i++)
        {
            ans = ans / x;
        }
    }

    return ans;
}