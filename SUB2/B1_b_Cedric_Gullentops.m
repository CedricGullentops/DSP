%B1 - Cédric Gullentops
%1e orde IIR

%TODO: verwijder het oudere signaal => is onduidelijk

%Definitie van de variabelen:
p = 100;
r = 10000;

n = 200;
T = (n-1)/r;
t = linspace(0,T,n);

ruis = rand(1,n);

x = sin(2*pi*p*t) + ruis;

a1 = {0.1 0.5 0.9 1 1.1};
b = 1;

% Plotten x(n)
subplot(6,1,1);
plot(t,x);
title('x(n)');
    
% Alle waarden van a1 afgaan
for n = 1:5
    % Plotten y(n)
    a = [1 -a1{n}];
    
    % Filter
    xf = filter(b,a,x);

    subplot(6,1,n+1);
    plot(t,x);
    hold on;
    plot(t,xf);
    hold off;
    titel = sprintf('a1 = %.1d', a1{n});
    title(titel);
end