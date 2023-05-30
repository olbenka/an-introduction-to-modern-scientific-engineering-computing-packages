# Урок 12. Анимация
#get - посмотреть свойства
#set - назначить свойства
#gcf - get current figure
#gca - get current axes
#h = plot(randn(10,1));

#птичка
##x = -10:0.1:10;
##k = -2;
##y = k*x.^2 - 2;
##ph = plot(x,y);
##
##axis([-10 10 -100 100])
##while (true)
##  while (k <= 2)
##    k = k + 0.01;
##    y = k*x.^2 - 2;
##    set(ph, 'XData', x, 'YData', y);
##    drawnow;
##    #pause
##  endwhile
##  while (k >= -2)
##    k = k - 0.01;
##    y = k*x.^2 - 2;
##    set(ph, 'XData', x, 'YData', y);
##    drawnow;
##  endwhile
##end

#волна
clear clc;
x = 0:pi/100:4*pi;
y = x;
[X,Y] = meshgrid(x,y);
z = 3*sin(X) + cos(Y);
h = surf(z);

axis tight; #фикс осей
shading interp;
colormap(ocean);
for k = 0:2*pi/100:2*pi
  z = (sin(X) + cos(Y)).*sin(k);
  set(h, 'ZData', z);
  drawnow;
endfor


##clear clc;
##x = 0:pi/100:4*pi;
##y = x;
##[X,Y] = meshgrid(x,y);
##z = (X)^2 + (Y)^2 + 4;
##h = surf(z);

##axis tight; #фикс осей
##shading interp;
##colormap(ocean);
##for k = 0:2*pi/100:2*pi
##  z = (sin(X) + cos(Y)).*sin(k);
##  set(h, 'ZData', z);
##  drawnow;
##endfor
