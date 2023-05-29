%Урок 4. Графики
x = -2:0.1:2;
y1 = x.*(1-x) + 0.5;
y2 = exp(-0.5*x).*sin(x);
#plot(x, y1, x, y2)
plot(x,y1, 'LineWidth', 3, 'Color', [13/2023 4/2023 3/2023])
hold on
plot(x,y2, 'LineWidth', 3, 'Color', [1 0 0])
hold off
%обязательно писать hold off%
grid on

xlabel('x')
ylabel('y')
title('my graph')
legend
