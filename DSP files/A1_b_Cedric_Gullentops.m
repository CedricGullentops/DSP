%A1_b - Cédric Gullentops
%Sampling en Quantisatie
%De onderstaande code toont de effecten van quantisatietechnieken bij
%verschillende bitgroottes.

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

%Eerste figuur:
%Eerste subplot: (round)
figure(1);
subplot(4,1,1);
hold on

%2 bits
step2 = 2*max(x)/2^2;
sig2 = fix(x/step2)*step2;
fout2 = sig2 - x;
plot(t,fout2) ;      
rms2 = rms(fout2);

%4 bits
step4 = 2*max(x)/2^4;
sig4 = fix(x/step4)*step4;
fout4 = sig4 - x;
plot(t,fout4);  
rms4 = rms(fout4);

%8 bits
step8 = 2*max(x)/2^8;
sig8 = fix(x/step8)*step8;
fout8 = sig8 - x;
plot(t,fout8);   
rms8 = rms(fout8);

%16 bits
step16 = 2*max(x)/2^16;
sig16 = fix(x/step16)*step16; 
fout16 = sig16 - x;
plot(t,fout16); 
rms16 = rms(fout16);

roundv=[rms2 rms4 rms8 rms16];

leg2 = sprintf('2 bit, RMS= %f',rms2);
leg4 = sprintf('4 bit, RMS= %f',rms4);
leg8 = sprintf('8 bit, RMS= %f',rms8);
leg16 = sprintf('16 bit, RMS= %f',rms16);

legend({leg2, leg4, leg8, leg16});
title('Round quantisatie');
xlabel('t(s)'), ylabel('Quantisatiefout');
hold off


%Tweede subplot: (fix)
subplot(4,1,2);
hold on

%2 bits
step2 = 2*max(x)/2^2;
sig2 = fix(x/step2)*step2;
fout2 = sig2 - x;
plot(t,fout2) ;      
rms2 = rms(fout2);

%4 bits
step4 = 2*max(x)/2^4;
sig4 = fix(x/step4)*step4;
fout4 = sig4 - x;
plot(t,fout4);  
rms4 = rms(fout4);

%8 bits
step8 = 2*max(x)/2^8;
sig8 = fix(x/step8)*step8;
fout8 = sig8 - x;
plot(t,fout8);   
rms8 = rms(fout8);

%16 bits
step16 = 2*max(x)/2^16;
sig16 = fix(x/step16)*step16; 
fout16 = sig16 - x;
plot(t,fout16);      
rms16 = rms(fout16);

fixv=[rms2 rms4 rms8 rms16];

leg2 = sprintf('2 bit, RMS= %f',rms2);
leg4 = sprintf('4 bit, RMS= %f',rms4);
leg8 = sprintf('8 bit, RMS= %f',rms8);
leg16 = sprintf('16 bit, RMS= %f',rms16);

legend({leg2, leg4, leg8, leg16});
title('Fix quantisatie');
xlabel('t(s)'), ylabel('Quantisatiefout');
hold off


%Derde subplot: (ceil)
subplot(4,1,3);
hold on

%2 bits
step2 = 2*max(x)/2^2;
sig2 = ceil(x/step2)*step2;
fout2 = sig2 - x;
plot(t,fout2);      
rms2 = rms(fout2);

%4 bits
step4 = 2*max(x)/2^4;
sig4 = ceil(x/step4)*step4;
fout4 = sig4 - x;
plot(t,fout4);       
rms4 = rms(fout4);

%8 bits
step8 = 2*max(x)/2^8;
sig8 = ceil(x/step8)*step8;
fout8 = sig8 - x;
plot(t,fout8);    
rms8 = rms(fout8);

%16 bits
step16 = 2*max(x)/2^16;
sig16 = ceil(x/step16)*step16;
fout16 = sig16 - x;
plot(t,fout16);      
rms16 = rms(fout16);

ceilv=[rms2 rms4 rms8 rms16];

leg2 = sprintf('2 bit, RMS= %f',rms2);
leg4 = sprintf('4 bit, RMS= %f',rms4);
leg8 = sprintf('8 bit, RMS= %f',rms8);
leg16 = sprintf('16 bit, RMS= %f',rms16);

legend({leg2, leg4, leg8, leg16});
title('Ceil quantisatie');
xlabel('t(s)'), ylabel('Quantisatiefout');
hold off


%Laatste subplot: (floor)
subplot(4,1,4);
hold on

%2 bits
step2 = 2*max(x)/2^2;
sig2 = floor(x/step2)*step2;
fout2 = sig2 - x;
plot(t,fout2);    
rms2 = rms(fout2);

%4 bits
step4 = 2*max(x)/2^4;
sig4 = floor(x/step4)*step4;
fout4 = sig4 - x;
plot(t,fout4);     
rms4 = rms(fout4);

%8 bits
step8 = 2*max(x)/2^8;
sig8 = floor(x/step8)*step8;
fout8 = sig8 - x;
plot(t,fout8);    
rms8 = rms(fout8);

%16 bits
step16 = 2*max(x)/2^16;
sig16 = floor(x/step16)*step16;
fout16 = sig16 - x;
plot(t,fout16);  
rms16 = rms(fout16);

leg2 = sprintf('2 bit, RMS= %f',rms2);
leg4 = sprintf('4 bit, RMS= %f',rms4);
leg8 = sprintf('8 bit, RMS= %f',rms8);
leg16 = sprintf('16 bit, RMS= %f',rms16);

legend({leg2, leg4, leg8, leg16});
title('Floor quantisatie');
xlabel('t(s)'), ylabel('Quantisatiefout');
hold off

%Tweede figuur:
figure(2);
bits=[2 4 8 16];
floorv=[rms2 rms4 rms8 rms16];
hold on
plot(bits,roundv);
plot(bits,fixv);
plot(bits,ceilv);
plot(bits,floorv);
leground = sprintf('round');
legfix = sprintf('fix');
legceil = sprintf('ceil');
legfloor = sprintf('floor');
legend({leground, legfix, legceil, legfloor});
title('Quantisatiefout vs #bits');
xlabel('#bits'), ylabel('Quantisatiefout');
hold off