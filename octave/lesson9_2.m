function roots = lesson9_2(f, a, b, tol)
  fa = f(a);
  fb = f(b);

  x = linspace(a, b, 100);
  y = f(x);
  roots = [];

  plot(x, y, 'LineWidth', 2);
  hold on;
  plot([a b], [0 0]);

  while abs(b-a) > tol
    c = (a + b) / 2;
    fc = f(c);
    if sign(fa) == sign(fc)
      a = c;
      fa = fc;
    else
      b = c;
      fb = fc;
    end
    roots = [roots, c];
  end


  root = (a + b) / 2;


  roots = [roots, root];
  for i = 1:length(roots)
     plot(roots(i), [0 0], 'marker', 'o', 'markersize', 3);
  endfor

end

