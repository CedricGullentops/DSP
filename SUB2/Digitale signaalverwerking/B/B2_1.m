
% Waarden
a1 = -1.767;
a2 = 1.04;

b = [1 0 0];
a = [1 a1 a2];

figure(1);
zplane(b,a);
figure(2);
freqz(b,a);