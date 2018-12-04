% Opgave 1
a= 10
b= 5
p= 500
q= 750
r= 5000
n= 32
T = (n-1)/r
t = linspace(0,T,n)

x = a*sin(2*pi*p*t)+ b*sin(2*pi*q*t)


subplot(2,1,1)
hold on

N = 4
stapgr = 2*max(x)/(2^N)
q = floor(x/stapgr)*stapgr
qfout = q-x
rms4 = rms(qfout)
plot(t,qfout)

N = 8
stapgr = 2*max(x)/(2^N)
q = floor(x/stapgr)*stapgr
qfout = q-x
rms8 = rms(qfout)
plot(t,qfout)

N = 16
stapgr = 2*max(x)/(2^N)
q = floor(x/stapgr)*stapgr
qfout = q-x
rms16 = rms(qfout)
plot(t,qfout)

hold off
title('floor')

subplot(2,1,2)
plot([4 8 16], [rms4 rms8 rms16])