
% Waarden
a1 = {0.1 0.5 0.9 1 1.1};
b = 1;
    
% Alle waarden van a1 afgaan
for n = 1:5
    % Plotten y(n)
    a = [1 -a1{n}];
    
    figure(n);
    zplane(b, a);
    figure(n+5);
    freqz(b,a);
end