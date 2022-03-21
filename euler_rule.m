%Euler's method for differential equation
close all
clear all
clc
fprintf('Name:Ventrapragada Sai Shravani \n PRN:17070123120 \n');
syms x y;
x0=input('Enter the value of x0=');
y0=input('Enter the value of y0=');
h=input('Enter the value of h=');
xn=input('Enter the value of xn=');
f=input('Enter the value of f(x,y)=');
f=inline(f);
n=(xn-x0)/h;
disp('i         x             y');
for i=1:n
    x=x0+h;
    y=y0+h*f(x0,y0);
    x0=x;
    y0=y;
    s=sprintf('\n %3.8f %3.8f %3.8f',i,x,y);
    disp(s);
end
fprintf('The value at point 0.1 is=');
   disp(y);

%Euler's modified method for differential equation

close all
clear all
clc
fprintf('Name:Ventrapragada Sai Shravani \n PRN:17070123120 \n');
syms x y;
x0=input('Enter the value of x0=');
y0=input('Enter the value of y0=');
h=input('Enter the value of h=');
xn=input('Enter the value of xn=');
f=input('Enter the value of f(x,y)=');
f=inline(f);
n=(xn-x0)/h;
disp('i         x             y');
for i=1:n
    x=x0+h;
    yr=y0+h*f(x0,y0);
    y=y0+(h/2)*(f(x0,y0)+ f(x,yr));
    x0=x;
    y0=y;
    s=sprintf('\n %3.8f %3.8f %3.8f',i,x,y);
    disp(s);
end
fprintf('The value at point 0.1 is=');
   disp(y);