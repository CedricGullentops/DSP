%B1 - Cédric Gullentops
%1e orde IIR
%De onderstaande code toont...

%Definitie van de variabelen:
%Filterwaarden:
a= [0.1 0.5 0.9 1 1.1];
b= 1;
p=1000;

%Aantal samples:
n= 200;

%Dataset van ones ingevuld door filterfunctie:
a_sub= [1 -a(1)];
x= ones(1,n);
y= filter(b,a_sub,x)

bereken(1);
bereken(2);
bereken(3);
bereken(4);
bereken(5);

%Bereken een matrix voor een filter
function bereken(i)
    a_sub= [1 -a(i)];
    x= ones(1,n);
    y= filter(b,a_sub,x)
end


