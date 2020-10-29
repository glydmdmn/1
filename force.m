plot (PP4_1.Displacement-0.5129, (PP4_1.Force-0.0078)*1000)
hold on
plot (PP4_2.Displacement-0.6276, (PP4_2.Force-0.0088)*1000)
hold on
plot (PP4_3.Displacement-0.6011, (PP4_3.Force-0.008)*1000)

a1 = trapz(PP4_1.Displacement-0.5129, (PP4_1.Force-0.0078)*1000)
a2 = trapz(PP4_2.Displacement-0.6276, (PP4_2.Force-0.0088)*1000)
a3 = trapz(PP4_3.Displacement-0.6011, (PP4_3.Force-0.008)*1000)
%% 
figure
plot (PP5_1.Displacement-0.6011, (PP5_1.Force)*1000-8)
hold on
plot (PP5_2.Displacement-0.5127, (PP5_2.Force)*1000-9.9)
hold on
plot (PP5_3.Displacement-0.5632, (PP5_3.Force)*1000-9.8)
ylim ([0,700])
b1 = trapz(PP5_1.Displacement-0.6011, (PP5_1.Force)*1000-8)
b2 = trapz(PP5_2.Displacement-0.5127, (PP5_2.Force)*1000-9.9)
b3 = trapz(PP5_3.Displacement-0.5632, (PP5_3.Force)*1000-9.8)
%% 
figure
plot (PP6_1.Displacement-0.5013, (PP6_1.Force)*1000-12.6)
hold on
plot (PP6_2.Displacement-0.5942, (PP6_2.Force)*1000-11.7)
hold on
plot (PP6_3.Displacement-0.6059, (PP6_3.Force)*1000-12.4)
xlim ([0,2.7])
c1 = trapz(PP6_1.Displacement-0.5013, (PP6_1.Force)*1000-12.6)
c2 = trapz(PP6_2.Displacement-0.5942, (PP6_2.Force)*1000-11.7)
c3 = trapz(PP6_3.Displacement-0.6059, (PP6_3.Force)*1000-12.4)
%% 
figure
plot (PP7_1.Displacement-0.4547, (PP7_1.Force)*1000)
hold on
plot (PP7_2.Displacement-0.5308, (PP7_2.Force)*1000-14.2)
hold on
plot (PP7_3.Displacement-0.6171, (PP7_3.Force)*1000-0.1)
d1 = trapz(PP7_1.Displacement-0.4547, (PP7_1.Force)*1000)
d2 = trapz(PP7_2.Displacement-0.5308, (PP7_2.Force)*1000-14.2)
d3 = trapz(PP7_3.Displacement-0.6171, (PP7_3.Force)*1000-0.1)
%% 
figure
plot (PP8_1.Displacement-0.5216, (PP8_1.Force)*1000-17.2)
hold on
plot (PP8_2.Displacement-0.6222, (PP8_2.Force)*1000-16.8)
hold on
plot (PP8_3.Displacement-0.5106, (PP8_3.Force)*1000-16.3)
ylim ([0,1200])
e1 = trapz(PP8_1.Displacement-0.5216, (PP8_1.Force)*1000-17.2)
e2 = trapz(PP8_2.Displacement-0.6222, (PP8_2.Force)*1000-16.8)
e3 = trapz(PP8_3.Displacement-0.5106, (PP8_3.Force)*1000-16.3)
%% 
figure
x = [4 4 4 5 5 5 6 6 6 7 7 7 8 8 8 ]
y = [a1/16 a2/16 a3/16 b1/20 b2/20 b3/20 c1/24 c2/24 c3/24 d1/28 d2/28 d3/28 e1/32 e2/32 e3/32]

plot (x,y,'x')
xlim ([0,10])

p = polyfit (x,y,1)
hold on
x1 = 0:0.1:10
y1 = p(1)*x1 + p(2)
plot (x1,y1)
