clc
clear
close all

load('Charpy_45')
load('Izod_45')

plot(Charpy45.Ligament,Charpy45.Toughness,'k+')
hold on

plot(Izod45.Ligament,Izod45.Toughness,'bo')
hold on

k = polyfit(Charpy45.Ligament,Charpy45.Toughness,1);
x = 0:0.01:10;
y = k(1)*x + k(2);
h(1) = plot(x,y,'DisplayName','Charpy 45^o','LineWidth',1,'Color','k')
hold on 

b = polyfit(Izod45.Ligament,Izod45.Toughness,1);
xx = 0:0.01:10;
yy = b(1)*xx + b(2);
h(2) = plot(xx,yy,'DisplayName','Izod 45^o','LineWidth',1,'Color','b')
hold on 

legend(h(1:2))

xlabel('Ligament (mm)')
ylabel('Impact toughness (kJ/m^2)')