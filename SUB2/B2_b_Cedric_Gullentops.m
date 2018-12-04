%B2 - Cédric Gullentops
%2e orde IIR

%rp evolueren
%Definitie van de variabelen:
rp = [0.9 0.99 0.999 0.9999];
rad = 0.5229;
for i = rp
    z1 = i*exp(j*rad);
    z2 = conj(z1);
    denom = 1;
    nom = poly([z1,z2]);
    freqz(denom,nom);
    title(sprintf('rp is %f',i));
    waitforbuttonpress;
end