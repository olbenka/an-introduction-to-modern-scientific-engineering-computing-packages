#Урок 6 трехмерная графика
#Задание плоскостей
x = -10:0.1:10;
y = -10:0.1:10;
[X,Y] = meshgrid(x,y);
Z = sin(sqrt(X.^2 + Y.^2))./sqrt(X.^2 + Y.^2);

#mesh(X,Y,Z); - обычный график
#hidden off; - показывает внутренность, по умолчанию on

#surf - в явном виде, иначе ввести параметризацию
#три разных графика с разной раскраской
##subplot(1,3,1);
##surf(X,Y,Z);
##shading flat
##
##subplot(1,3,2);
##surf(X,Y,Z);
##shading faceted
##
##subplot(1,3,3);
##surf(X,Y,Z);
##shading interp

#surfc
#surfc(X,Y,Z); - линии уровня
#colorbar; - цветовая шкала

#contour
#contour(X,Y,Z); - контур

#замена цвета
surf(X,Y,Z);
colormap('viridis');
shading interp;
