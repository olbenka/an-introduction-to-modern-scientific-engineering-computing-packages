#мат маятник - формулы - фото классичское ур-е маятника
#решение - получаем амплитуду и график (анимация)


g = 9.8;
L = 1; # Длина маятника
tspan = [0 10]; # Временной интервал
y0 = [pi/2 0]; # Начальные условия

#метод Рунге-Кутты
[T,Y] = ode45(@(t,y) [y(2);-g/L*sin(y(1))], tspan, y0);

x = L*sin(Y(:,1));
y = -L*cos(Y(:,1));

#график амплитуды
figure;
plot(T,x);

#анимация маятника
figure;
for i = 1:length(T)
    plot([0 x(i)], [0 y(i)], '-o', 'MarkerSize', 10, 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b');
    axis equal;
    axis([-L L -L L]);
    drawnow;
end


