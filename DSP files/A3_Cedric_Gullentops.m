%A3 - Cédric Gullentops
%Fast Fourier Transform
%De onderstaande code toont de effecten van sampling op frequentiespectrum
%van een golfvorm in het continue tijdsdomein.
%FUNCTIONALITEIT: verwijder de % tekens van een van de volgende 3 blokken:
%Grafiek, FFT, FFTshift
%Voor standaardgebruik kies de eerste fs, kies een andere voor het testen
%van spectral leakage.

%Definitie van de variabelen:
%Golfwaarden:
a= 2;
p= 500;

%Samplefrequentie:
r= 4000;

%Aantal samples:
n= 64;

%Berekende waarden:
fs= r;
%fs= r+12.5;
%fs= r+37.5;
%fs= r+62.5;
Ts= 1/fs;              
t= 0:1/fs:(Ts*(n-1));
freq= (0:(n-1))*fs/n;
fshift= freq - fs/2;

%Golf:
x = a*cos(2*pi*p*t);

%Grafiek:
%stem(t,x);
%title('Gesampelde functie');
%xlabel('t(s)'), ylabel('Amplitude');

%FFT:
%stem(freq,abs(fft(x)));
%title('FFT');
%xlabel('frequentie(Hz)'), ylabel('Amplitude');

%FFTshift:
%stem(fshift,fftshift(abs(fft(x))));
%title('FFTshift');
%xlabel('frequentie(Hz)'), ylabel('Amplitude');
