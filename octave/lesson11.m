#z^3-1
#аналитически находим корни r1, r2, r3
#z = x+iy
#методом ньютона 40-50 ходами
#прямоугольник -2 до 2 по х и у, оцениваем каждую точку к какому корню сойдется z0
#разные цвета для корней
#roots - найдет корни полинома
polynom1 = [1 0 0 -1];
r = roots(polynom1);
#производная от x^3 - 1
f = @(x) x^3 - 1;
df = @(x) 3*x.^2;
for l = -2:0.1:2
  for j = -2:0.1:2
    z0 = l+j*i;
    zprev = z0;
    z1 = z0 - (f(z0)./df(z0));
    step = 1;
    while (abs(z1 - zprev) > 1e-6 && step < 40 )
      zprev = z1;
      z1 = zprev - (f(zprev)./df(zprev));
      step = step + 1;
    endwhile
    hold on;
    if ((z1 - r(1)) < 1e-6)
      plot(l, j, 'y', 'marker', 'o');
    endif
    if ((z1 - r(2)) < 1e-6)
      plot(l, j, 'm', 'marker', 'o');
    endif
    if ((z1 - r(3)) < 1e-6)
      plot(l, j, 'c', 'marker', 'o');
    endif
  endfor
endfor

