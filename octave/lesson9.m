#Урок 9. Нахождение корней
#на вход функция, приближение (можно указать точность и тд)
#fzero - функция как метод ньютона
x = -10:0.1:10;
y = 1 + (1 + sin(x) - cos(x)).^2 - (sin(2*x) - cos(2*x) - 0.2).^2;
plot(x,y, 'linewidth', 3);
grid on;
xlabel('x');
ylabel('y');
hold on;
plot(x, 0*x);
