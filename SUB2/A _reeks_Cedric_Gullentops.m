a1 = -0.54;
a2 = 0.76;

b1 = 1;
b2 = -1;

noemer = [1 a1 a2];
teller = [b1 b2];

figure(1);
zplane(teller, noemer);
figure(2);
freqz(teller, noemer);