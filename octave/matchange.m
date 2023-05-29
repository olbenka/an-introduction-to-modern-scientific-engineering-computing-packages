function matr = matchange(n,m)
  %Урок 3. Задание 2%
  matr = false(n,m);
  matr(:, 2:2:m) = true;
 end
