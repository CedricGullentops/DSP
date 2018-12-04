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

subplot(4,1,1)

N = 4
stapgr = 2*max(x)/(2^N)
q = round(x/stapgr)*stapgr
qfout = q-x
plot(t,qfout)

hold on

N = 8
stapgr = 2*max(x)/(2^N)
q = round(x/stapgr)*stapgr
qfout = q-x
plot(t,qfout)

N = 16
stapgr = 2*max(x)/(2^N)
q = round(x/stapgr)*stapgr
qfout = q-x
plot(t,qfout)

hold off
title('round')
subplot(4,1,2)

N = 4
stapgr = 2*max(x)/(2^N)
q = ceil(x/stapgr)*stapgr
qfout = q-x
plot(t,qfout)

hold on

N = 8
stapgr = 2*max(x)/(2^N)
q = ceil(x/stapgr)*stapgr
qfout = q-x
plot(t,qfout)

N = 16
stapgr = 2*max(x)/(2^N)
q = ceil(x/stapgr)*stapgr
qfout = q-x
plot(t,qfout)

hold off
title('ceil')
subplot(4,1,3)

N = 4
stapgr = 2*max(x)/(2^N)
q = floor(x/stapgr)*stapgr
qfout = q-x
plot(t,qfout)

hold on

N = 8
stapgr = 2*max(x)/(2^N)
q = floor(x/stapgr)*stapgr
qfout = q-x
plot(t,qfout)

N = 16
stapgr = 2*max(x)/(2^N)
q = floor(x/stapgr)*stapgr
qfout = q-x
plot(t,qfout)

hold off
title('floor')

subplot(4,1,4)

N = 4
stapgr = 2*max(x)/(2^N)
q = fix(x/stapgr)*stapgr
qfout = q-x
plot(t,qfout)

hold on

N = 8
stapgr = 2*max(x)/(2^N)
q = fix(x/stapgr)*stapgr
qfout = q-x
plot(t,qfout)

N = 16
stapgr = 2*max(x)/(2^N)
q = fix(x/stapgr)*stapgr
qfout = q-x
plot(t,qfout)

hold off
title('fix')