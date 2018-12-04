% Opgave 1
a= 10
b= 0
q= 750
r= 5000
n= 32
T = (n-1)/r
t = linspace(0,T,n)

subplot(4,1,1)
p= 0
x = a*sin(2*pi*p*t)+ b*sin(2*pi*q*t)
stem(t,x)
title('fs = 0')
axis ([0, 7*10^-3, -10, 10])

subplot(4,1,2)
p= 500
x = a*sin(2*pi*p*t)+ b*sin(2*pi*q*t)
stem(t,x)
title('fs = 500')
axis ([0, 7*10^-3, -10, 10])

subplot(4,1,3)
p= 1250
x = a*sin(2*pi*p*t)+ b*sin(2*pi*q*t)
stem(t,x)
title('fs = 1250')
axis ([0, 7*10^-3, -10, 10])

subplot(4,1,4)
p=2500
x = a*sin(2*pi*p*t)+ b*sin(2*pi*q*t)
stem(t,x)
title('fs = 2500')
axis ([0, 7*10^-3, -10, 10])

figure(2)

subplot(4,1,1)
p= 3750
x = a*sin(2*pi*p*t)+ b*sin(2*pi*q*t)
stem(t,x)
title('fs = 3750')
axis ([0, 7*10^-3, -10, 10])

subplot(4,1,2)
p= 4500
x = a*sin(2*pi*p*t)+ b*sin(2*pi*q*t)
stem(t,x)
title('fs = 4500')
axis ([0, 7*10^-3, -10, 10])

subplot(4,1,3)
p= 5000
x = a*sin(2*pi*p*t)+ b*sin(2*pi*q*t)
stem(t,x)
title('fs = 5000')
axis ([0, 7*10^-3, -10, 10])

subplot(4,1,4)
p=5500
x = a*sin(2*pi*p*t)+ b*sin(2*pi*q*t)
stem(t,x)
title('fs = 5500')
axis ([0, 7*10^-3, -10, 10])