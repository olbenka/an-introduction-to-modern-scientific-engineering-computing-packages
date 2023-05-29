#задание 12
t = [-5:0.05:5];
a = 1/4;
b = 1/16;
m = 8; n = 8;
x = cos(t) - a*cos(m*t) + b*sin(n*t);
y = sin(t) + a*sin(m*t) + b*cos(n*t);
k = 100;
hold on
for i = 1:k
  plot(x/i, y/i);
end
hold off
