function lesson10(f, a, b, eps)
  # Метод Ньютона
  x = -10:0.1:10;
  plot(x, f(x));
  hold on
  plot(x, 0*x);
  grid on;
  eps = 1e-10;
  h = 0.00005;
  roots_x =[];
  step = 0.1;
  for i = a:step:b
      fdif = (f(i + h) - f(i)) / h;
      xprev = i;
      xn = i - (f(i) / fdif);
      while (abs(xn - xprev) > eps)
        xprev = xn;
        fdif = (f(xn + h) - f(xn)) / h;
        xn = xn - (f(xn) / fdif);
      endwhile
      if(xn <= b) && (xn >= a)
        roots_x = [roots_x, xn];
      endif
  endfor
  res = unique(roots_x);
  plot(res, f(res), 'marker', 'o', 'markersize', 3);
  hold off
end

