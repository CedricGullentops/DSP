%A2 - Cédric Gullentops
%Convolutie
%De onderstaande code toont de effecten van enkele coëfficiënten op
%gesamplede ingangsfuncties.
%FUNCTIONALITEIT: haal één % weg van elk van de onderstaande blokken.

%Gesampelde functies:
%func= [0 0 0 1 1 1 1 1 1];       
%func= [0 0 0 1 0 0 0 0 0];
%func= [0 0 0 1 0 0 0 1 0 0 0];
%func= [0 0 0 1 1 1 1 1 1 0 0 0];
%func= [0 0 0 0 0 1 1 1 -1 1 0 0 0 0 0 0 -1 -1 -1 1 -1 0 0 0 0 0]; 

%Coëfficiënten:
%c= [0.5 0.25 0.125];         
%c= [1/3 1/3 1/3];
%c= [0 1 1 1 -1 1 0]; %kopie van ingangsfunctie
%c= [0 1 -1 1 1 1 0]; %spiegeling van kopie

[~, f]= size(func);
[~, cl]= size(c);
lengte= f + cl; 

%Grafieken:
hold on

%Stapfunctie:
subplot(3,1,1);
stem(func);        
axis([0 lengte min(func)-0.25 max(func)+0.25]);
title('Stapfunctie');
xlabel('Sampelnummer'), ylabel('Amplitude');

%Coëfficiëntenfunctie:
subplot(3,1,2);
stem(c);       
axis([0 lengte min(c)-0.25 max(c)+0.25]);
title('Coëfficiëntenfunctie');
xlabel('Sampelnummer'), ylabel('Amplitude');

%Convolutie resultaat
subplot(3,1,3);
stem(conv(func,c));
axis([0 lengte min(conv(func,c)) max(conv(func,c))+0.25]);
title('Convolutie');
xlabel('Sampelnummer'), ylabel('Amplitude');
hold off