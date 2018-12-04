
% Dataset
x = ones(200);
a1 = {0.1 0.5 0.9 1 1.1};
b = 1;

% Alle waarden van a1 afgaan
for n = 1:5
    subplot(5,1,n)
    a = [1 -a1{n}];
    
    % Filter
    xf = filter(b,a,x);

    % Plotten
    plot(xf);
end