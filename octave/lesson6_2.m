#Урок 6 трехмерная графика
#meshgrid формирует сетку опорную
clear
[x,y] = meshgrid(-5:0.5:5, -5:0.5:5);
plot(x,y);
xlabel('x');
ylabel('y');

