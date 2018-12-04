% Opgave 1
a= 10;
b= 5;
p= 500;
q= 750;
r= 5000;
n= 32;
T = (n-1)/r;
t = linspace(0,T,n);

x = a*sin(2*pi*p*t)+ b*sin(2*pi*q*t);
stem(t,x);

% Opgave 2
hold on

t = linspace(0,T,10*n);
x = a*sin(2*pi*p*t)+ b*sin(2*pi*q*t);

plot(t,x);

hold off