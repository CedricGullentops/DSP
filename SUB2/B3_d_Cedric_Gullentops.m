%B3 - Cédric Gullentops
%2e orde FIR

%Definitie van de variabelen:
b1 = 0.5;
b2 = 0.25;

nom = [1 0 0];
denom = [1 b1 b2];

%impz(denom,nom,10);
dimpulse(denom,nom)
