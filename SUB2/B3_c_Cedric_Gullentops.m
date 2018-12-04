%B3 - Cédric Gullentops
%2e orde FIR

%Definitie van de variabelen:
b1 = 0.5;
b2 = 0.25;

nom = [1 0 0];
denom = [1 b1 b2];

%Evolueer rad
r = 0.5
rad = [0 pi/4 pi/2 3*pi/4 pi]
for i = rad
    z1 = r*exp(j*i)
    z2 = conj(z1)
    denom = poly([z1,z2]);
    nom = [1 0 0];
    freqz(denom,nom);
    title(sprintf('rad is %f',i));
    waitforbuttonpress;
end
