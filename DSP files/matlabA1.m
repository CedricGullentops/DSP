%Definieren van de variabelen%
a=5;
b=10;
p=1000;
q=1500;
r=10000;
n=32;
fs=r;
Ts = 1/fs;
T=(n-1)*Ts;

%Grafische voorstelling van de gesampelde golfvorm%
figure
t=linspace(0,T,n)';
x = a * sin(2*pi*p*t)+b*sin(2*pi*q*t);
stem(t,x);

%Grafische voorstelling van de continue en gesampelde golven%
figure
t=linspace(0,T,n*10)';
x = a * sin(2*pi*p*t)+b*sin(2*pi*q*t);
subplot(2,1,1);
plot(t,x);

subplot(2,1,2);
stem(t,x,'filled');

%Tijdelijk%
F=0;
x = a * sin(2*pi*F*fs*t);
figure
subplot(4,4,1);
stem(t,x);
