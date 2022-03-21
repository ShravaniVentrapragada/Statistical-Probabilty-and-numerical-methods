%to find the valueof f(x) at any point of x by newton's forward

%interpolation formula

clc

clear all

close all

n=input('enter the value of n=');

h=input('enter the value of step size=');

x=input('enter the value of x=');

y=input('enter the value of y=');

x_reqd=input('enter the value of x for which value of y is sought=');

p=[x_reqd-x(1)]/h;

for i=1:n

diff(i,1)=y(i);

end

for j=2:n

for i=1:n-j+1

diff(i,j)=diff(i+1,j-1)-diff(i,j-1);

end

end

ans=y(1);

for i=1:n-1

term=1;

for j=1:i

term=term*(p-j+1)/j;

end

ans=ans+term*diff(1,i+1);

end

fprintf('pressure at temp 142 is : ');

disp(ans);

backward

clc

clear all

close all

n=input('enter the value of n=');

h=input('enter the value of step size=');

x=input('enter the value of x=');

y=input('enter the value of y=');

x_reqd=input('enter the value of x for which value of y is sought=');

p=[x_reqd-x(n)]/h;

for i=1:n

diff(i,1)=y(i);

end

for j=2:n

for i=1:n-j+1

diff(i,j)=diff(i+1,j-1)-diff(i,j-1);

end

end

ans=y(n);

for i=1:n-1

term=1;

for j=1:i

term=term*(p+j-1)/j;

end

ans=ans+term*diff(n-1,i+1);

end

fprintf('pressure at temp 142 is : ');

disp(ans);

