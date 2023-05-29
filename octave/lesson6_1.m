#Урок 6 трехмерная графика
#пространственная спираль
t = 0:0.05:9*pi;
x = 2*sin(t);
y = 3*cos(t);

#plot3(x,y,t, 'linewidth', 3);
#comet3(x,y,t); - анимация

grid on;
xlabel('x');
ylabel('y');
zlabel('z');
