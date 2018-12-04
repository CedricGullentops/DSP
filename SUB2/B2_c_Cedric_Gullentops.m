%B2 - Cédric Gullentops
%2e orde IIR

%theta evolueren
%Definitie van de variabelen:
r = 1.01978;
rad = [0 pi/4 pi/2 3*pi/4 pi];
for i = rad
    z1 = r*exp(j*i);
    z2 = conj(z1);
    denom = 1;
    nom = poly([z1,z2]);
    freqz(denom,nom);
    title(sprintf('rad is %f',i));
    waitforbuttonpress;
end