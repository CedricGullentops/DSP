%A5 - Cédric Gullentops
%Ruis - windowing - interpolatie
%In de onderstaande code vindt u de effecten van padding en interpolatie op
%gesamplede functies.

%Definitie van de variabelen:
%Aantal samples:
n= 64;  

%Berekende waarden:
fs= 1000;          
Ts= 1/fs;       
T= (n-1)*Ts;    
t= 0:1/fs:T;     

%Functie + noise van zelfde ordegrootte met genormalizeerde distributie
x1= 100*sin(2*pi*100*t)+2*sin(2*pi*164.25*t)+randn(size(x1));
x1_boxcar= x1.*boxcar(length(x1)).';
fig1= wvtool(x1,x1_boxcar);
teken('Ruis',x1,fs);

%Met padding
padding= 512;
x2= [x1 zeros(1,padding-n)];
%x2_boxcar= [x1 .* boxcar(length(x1)).' zeros(1,padding-n)];
%fig2= wvtool(x2,x2_boxcar);
teken('Padding',x2,fs);
x2_hamming= [x1 .* hamming(length(x1)).' zeros(1,padding-n)];
fig2= wvtool(x2,x2_hamming);

%Interpolatie
x3= upsample(x1,padding/64);
x3_hamming= x3.*hamming(length(x3)).';
teken('Interpolatie',x3,fs);
fig3= wvtool(x3,x3_hamming);

%Tekent periodogram van functie.
function fig = teken(naam,x,fs)
    fig = figure;
    hold on;
    [pxx,f]= periodogram(x,[],length(x),fs);
    plot(f,10*log10(pxx));
    [pxx,f]= periodogram(x,hamming(length(x)),length(x),fs);
    plot(f,10*log10(pxx));
    legend(naam,strcat(naam,' + Hamming'));
    xlabel('Frequentie [Hz]');
    ylabel('Amplitude per frequentie [dB/Hz]');
end
