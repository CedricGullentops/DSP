%B2 - Cédric Gullentops
%2e orde IIR

%Definitie van de variabelen:
a1 = ;
a2 = ;

b1 = -1;
b2 = -1;

nom = [1 a1 a2];
denom = [b1 b2];

figure(1);
zplane(denom, nom);
figure(2);
freqz(denom, nom);