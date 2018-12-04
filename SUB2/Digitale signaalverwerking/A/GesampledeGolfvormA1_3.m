% Opgave 1
a= 10
b= 5
p= 500
q= 750
r= 5000
n= 32
T = (n-1)/r
t = linspace(0,T,n)

x = a*sin(2*pi*p*t)+ b*sin(2*pi*q*t)


subplot(2,1,1)
hold on

rmssen = [0 0 0 0 0]

for i = 0:4
    N = 2^i
    stapgr = 2*max(x)/(2^N)
    q = floor(x/stapgr)*stapgr
    qfout = q-x
    plot(t,qfout)
    rmssen(i+1) = rms(qfout)
end
axis([0 7*10^-3 -2 2])
hold off
subplot(2,1,2)
plot([0 2 4 8 16], rmssen)