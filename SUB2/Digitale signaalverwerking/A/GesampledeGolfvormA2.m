% Opgave 1
a= 5
b= 5
p= 8000
q= 750
r= 1000
n= 32
T = (n-1)/r
t = linspace(0,T,n)

x = a*sin(2*pi*p*t)+ b*sin(2*pi*q*t)

x1 = [0 0 0 1 1 1 1 1 1]
x2 = [0 0 0 1 0 0 0 0 0]
x3 = [0 0 0 1 0 0 0 0 1 0 0 0]
x4 = [0 0 0 1 1 1 1 1 1 0 0 0]