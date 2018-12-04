%B2 - Cédric Gullentops
%2e orde IIR

%Definitie van de variabelen:
a1 = -1.45;
a2 = 1.04;

nom = [1 a1 a2];
denom = 1;

%Frequentieweergave
freqz(denom,nom, 1000);

%Pole-Zero plot
zplane(denom,nom);

%Roots
roots(nom);