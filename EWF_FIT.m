clc
clear
close all

load('EWF')

plot(EWF.Ligament,EWF.Toughness,'k+')
hold on
k = polyfit(EWF.Ligament,EWF.Toughness,1);
x = 0:0.1:10;
y = k(1)*x + k(2);
h(1) = plot(x,y,'DisplayName','(a)','LineWidth',1,'Color','r')
hold on 

%
load('EWF4.mat')

b = polyfit(EWF4.Ligament,EWF4.Toughness,1);
xx = 0:0.1:10;
yy = b(1)*xx + b(2);
h(2) = plot(xx,yy,'DisplayName','(b)','LineWidth',1,'Color','b')

legend(h(1:2))