%trapezoidal rule
clc
close all
syms x;
a=input('Enter the value of lower limit of the intergration a=');
b=input('Enter the value of upper limit of the intergration b=');
n=input('enter the number of subinterval n=');
f=input('Enter f=');
f=inline(f);
h=(b-a)/n;
sum=0;
for i=1:n-1
    x=a+i*h;
    sum=sum+f(x);
    result=(h/2)*(f(a)+f(b)+2*sum);
end
fprintf('the result of this integral is=');
disp(result);

%simpson1/3
clc
close all
syms x;
a=input('Enter the value of lower limit of the intergration a=');
b=input('Enter the value of upper limit of the intergration b=');
n=input('enter the number of subinterval n=');
f=input('Enter f=');
f=inline(f);
h=(b-a)/n;
sum=0;
sum1=0;
sum2=0;
for i=1:n-1
    x=a+i*h;
    sum=sum+f(x);
    if rem(i,2)==0
        sum1=sum1+f(x);
    else
         sum2=sum2+f(x);
    end
    result=(h/3)*(f(a)+f(b)+4*sum2+2*sum1);
end
fprintf('the result of this integral is=');
disp(result);

%simpson3/8
clc
close all
syms x;
a=input('Enter the value of lower limit of the intergration a=');
b=input('Enter the value of upper limit of the intergration b=');
n=input('enter the number of subinterval n=');
f=input('Enter f=');
f=inline(f);
h=(b-a)/n;
sum=0;
sum1=0;
sum2=0;
for i=1:n-1
    x=a+i*h;
    sum=sum+f(x);
    if rem(i,3)==0
        sum1=sum1+f(x);
    else
         sum2=sum2+f(x);
    end
    result=(3*h/8)*(f(a)+f(b)+3*sum2+2*sum1);
end
fprintf('the result of this integral is=');
disp(result);