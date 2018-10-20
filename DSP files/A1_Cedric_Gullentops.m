%Definieren van de variabelen%
a=5;
b=10;
p=1000;
q=1500;
r=10000;
n=32;
fs=r;
Ts = 1/fs;
t = (0:(n-1))*Ts;

%Grafische voorstelling van de continue en gesampelde golven%
figure
x = a * sin(2*pi*p*t)+b*sin(2*pi*q*t);
subplot(2,1,1);
stem(t,x,'k');
title('Grafische voorstelling sampling en quantisatie');
xlabel('t(s)'), ylabel('sample x(n)')

t10 = (0: (n*10-1))*(Ts/10);
x10 = a * sin(2*pi*p*t10)+b*sin(2*pi*q*t10);

subplot(2,1,2);
plot(t10,x10,'b');
xlabel('t(s)'), ylabel('sample x(n)')

%Tijdelijk%
F= [0 1/10 1/4 1/2 3/4 9/10 1 11/10 5/4 3/2 7/4 19/10 2];

%figure
for idx = 1:numel(F)
    figure
    x = a * sin(2*pi*F(idx)*fs*t10);
    %subplot(4,4,idx);
    xlabel('t(s)'), ylabel('sample x(n)')
    stem(t10,x,'b');
end
