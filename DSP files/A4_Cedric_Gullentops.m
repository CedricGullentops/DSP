%A4 - Cédric Gullentops
%Windowing
%Hieronder vind u de code om boxcar hann of hamming windowing toe te passen
%op enkele functies.

%Definitie van de variabelen:
%Gegeven waarden:
a= 625;
b= 62.5;
c= 250;
d= 125;     
p= 1000;

%Aantal samples:
n= 64;  

%Samplefrequentie:
r= 8000;

%Berekende waarden:
fs= r;          
Ts= 1/fs;       
T= (n-1)*Ts;    
t= 0:1/fs:T;             
           
%Windows
boxcar = rectwin(n);
han = hann(n); 
ham = hamming(n);
fig= wvtool(boxcar,han,ham);

%Lijst van wederkerende deelfuncties:
x1= sin(2*pi*p*t);
x2= sin(2*pi*(p+a)*t);
x3= 0.05*sin(2*pi*(p+b)*t);
x4= 0.05*sin(2*pi*(p+c)*t);
x5= sin(2*pi*(p+d)*t);

%Kies welke functies getekend moeten worden (zet %):
teken(x1,boxcar,han,ham);
teken(x2,boxcar,han,ham);
teken(x1+x3,boxcar,han,ham);
teken(x1+x4,boxcar,han,ham);
teken(x5+x3,boxcar,han,ham);
teken(x5+x4,boxcar,han,ham);

%Functie om wvtool toe te passen op doorgestuurde functie:
function fig = teken(x,boxcar,han,ham)
    x_box = x.*boxcar.';
    x_han = x.*han.';
    x_ham = x.*ham.';
    fig = wvtool(x_box,x_han,x_ham);
end