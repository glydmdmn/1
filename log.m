clc
clear
close all

load('Charpy_45')
load('Charpy_60')
load('Charpy_90')

plot(Charpy45.Ligament,Charpy45.Toughness,'k+')
hold on

plot(Charpy60.Ligament,Charpy60.Toughness,'bo')
hold on

plot(Charpy90.Ligament,Charpy90.Toughness,'gx')
hold on
xlabel('Ligament (mm)')
ylabel('Toughness (kJ/m^2)')

figure
loglog(Izod45.Ligament,Izod45.Toughness,'k+')
hold on

loglog(Izod60.Ligament,Izod60.Toughness,'bo')
hold on

loglog(Izod90.Ligament,Izod90.Toughness,'gx')
hold on

xlabel('lg(Ligament) (mm)')
ylabel('lg(Toughness) (kJ/m^2)')
