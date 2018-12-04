%B2 - Cédric Gullentops
%2e orde IIR

%Definitie van de variabelen:
a1 = 0.5;
a2 = 0.25;

nom = [1 a1 a2];
denom = 1;

stepz(denom,nom,10);
title('Stapresponsie');

waitforbuttonpress;

impz(denom,nom,10);
title('Impulsresponsie');