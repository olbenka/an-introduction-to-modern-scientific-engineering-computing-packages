function lesson9_1(f)
  #функция, находящая корни с помощью fzero
  value = zeros(0,0);
  x = -10:0.1:10;
  t = -5:0.25:5;
  y = f(x);
  plot(x,y, 'linewidth', 3);
  grid on;
  xlabel('x');
  ylabel('y');
  hold on;
  plot(t, 0*t);
  for i = 1:length(t)
    r = fzero(f, t(i));
    if (r <= 5) && (r >= -5)
      value(end+1) = r;
    endif
  endfor
  for i = 1:length(value)
     plot(value(i), t*0, 'marker', 'o', 'markersize', 3);
  endfor
end
