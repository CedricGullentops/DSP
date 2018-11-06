%A1 - Cédric Gullentops
%Sampling en Quantisatie
%De onderstaande code toont een analoog signaal die digitaal gesampeld
%word en de effecten van undersampling. (Aliasing)

%Definitie van de variabelen:
%Golfwaarden:
a=5;
b=10;
p=1000;
q=1500;
%Samplefrequentie:
r=10000;
%Aantal samples:
n=32;       
%Berekende waarden:
fs = r;          
Ts = 1/fs;      
T = (n-1)*Ts;    
t = 0:1/fs:T;

%Golf:
x = a * sin(2*pi*p*t)+b*sin(2*pi*q*t);

%Grafische voorstelling van de continue en gesampelde golven.
hold on
stem(t,x);
title('Grafische voorstelling sampling en quantisatie');
xlabel('t(s)'), ylabel('sample x(n)')

%10 keer meer samples.
t10 = 0:1/(10*fs):T;                            
x10 = a * sin(2*pi*p*t10)+b*sin(2*pi*q*t10);

stem(t,x);
plot(t10,x10);
hold off

%Verschillende situaties:
F= [0 1/10 1/4 1/2 3/4 9/10 1 11/10 5/4 3/2 7/4 19/10 2];

%Figuren van de voorgaande situaties:
for idx = 1:numel(F)
    figure
    x = a * sin(2*pi*F(idx)*fs*t);
    xlabel('t(s)'), ylabel('sample x(n)')
    stem(t,x);
end
