clc

clear all

close all

%lagrange's interpolation

n=input('Number of data point=');

x=input('Enter a value of x=');

y=input('Enter a value of y=');

x_reqd=input('Enter the number to be soughted=');

sum=0;

for i=1:n

u=1;

l=1;

for j=1:n

if j~=i

u=u*(x_reqd-x(j));

l=l*(x(i)-x(j));

end

end

sum=sum+(u/l)*y(i);

end

fprintf('y(x) is equal to');

disp(sum);

