%B3 - Cédric Gullentops
%2e orde FIR

%Definitie van de variabelen:
b1 = 0.5;
b2 = 0.25;

nom = [1 0 0];
denom = [1 b1 b2];

%Evolueer door rp
rp = [0.9 0.99 0.999 0.9999];
rad = 60*pi/180;
for i = rp
    z1 = i*exp(j*rad);
    z2 = conj(z1);
    denom = poly([z1,z2]);
    nom = [1 0 0];
    freqz(denom,nom);
    title(sprintf('rp is %f',i));
    waitforbuttonpress;
end
