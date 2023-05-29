>> zeros(3, 4)
ans =

   0   0   0   0
   0   0   0   0
   0   0   0   0

>> zeros(5)
ans =

   0   0   0   0   0
   0   0   0   0   0
   0   0   0   0   0
   0   0   0   0   0
   0   0   0   0   0

>> ones(3)
ans =

   1   1   1
   1   1   1
   1   1   1

>> eye(4)
ans =

Diagonal Matrix

   1   0   0   0
   0   1   0   0
   0   0   1   0
   0   0   0   1

>> rand(4,5)
ans =

   0.240785   0.498033   0.764412   0.700460   0.729937
   0.345790   0.402383   0.696957   0.509296   0.705021
   0.126415   0.572919   0.659019   0.621924   0.187433
   0.049409   0.577953   0.713395   0.333873   0.150362

>> randn(1,2)
ans =

   0.8469   0.3785

>> randn(3,4)
ans =

  -1.318002  -0.884376  -0.471212   1.620727
  -0.876065  -1.159517   0.069134   0.797520
   2.116851  -2.289785   0.218672   0.496525

>> randi(3,4)
ans =

   2   3   1   2
   2   3   3   2
   3   2   3   1
   1   1   3   2

>> x = [1:5]
x =

   1   2   3   4   5

>> diag(x)
ans =

Diagonal Matrix

   1   0   0   0   0
   0   2   0   0   0
   0   0   3   0   0
   0   0   0   4   0
   0   0   0   0   5

>> diag(x, 2)
ans =

   0   0   1   0   0   0   0
   0   0   0   2   0   0   0
   0   0   0   0   3   0   0
   0   0   0   0   0   4   0
   0   0   0   0   0   0   5
   0   0   0   0   0   0   0
   0   0   0   0   0   0   0

>> A = randi(3)
A = 1
>> A = randi(3,4)
A =

   3   1   2   1
   1   2   1   2
   2   1   2   3
   2   1   2   1

>> diag(A)
ans =

   3
   2
   2
   1

>> diag(A, 2)
ans =

   2
   2

>> format long
>> diag(A, 2)
ans =

   2
   2

>> format double
error: format: unrecognized format state 'double'
>> format short
>> magic(3)
ans =

   8   1   6
   3   5   7
   4   9   2

>> why
error: 'why' undefined near line 1, column 1
>> A = [1,2;3,4]
A =

   1   2
   3   4

>> B = [5, 6:7,8]
B =

   5   6   7   8

>> B = [5, 6;7,8]
B =

   5   6
   7   8

>> C = [A B]
C =

   1   2   5   6
   3   4   7   8

>> C = [A; B]
C =

   1   2
   3   4
   5   6
   7   8

>> cat(1, A, B)
ans =

   1   2
   3   4
   5   6
   7   8

>> cat(1, A, C)
ans =

   1   2
   3   4
   1   2
   3   4
   5   6
   7   8

>> cat(2, A, C)
error: cat: dimension mismatch
>> x = 1:12
x =

    1    2    3    4    5    6    7    8    9   10   11   12

>> reshape(x, 3,4)
ans =

    1    4    7   10
    2    5    8   11
    3    6    9   12

>> reshape(x, 2,[])
ans =

    1    3    5    7    9   11
    2    4    6    8   10   12

>> A
A =

   1   2
   3   4

>> B
B =

   5   6
   7   8

>> A + B
ans =

    6    8
   10   12

>> A*B
ans =

   19   22
   43   50

>>
>> A.*B
ans =

    5   12
   21   32

>> E = eye(3)
E =

Diagonal Matrix

   1   0   0
   0   1   0
   0   0   1

>> a = 1:3
a =

   1   2   3

>> A*a
error: operator *: nonconformant arguments (op1 is 2x2, op2 is 1x3)
>> A.a
error: matrix cannot be indexed with .
>> A.*a
error: product: nonconformant arguments (op1 is 2x2, op2 is 1x3)
>> E*a
error: operator *: nonconformant arguments (op1 is 3x3, op2 is 1x3)
>> E.*a
ans =

   1   0   0
   0   2   0
   0   0   3

>> A
A =

   1   2
   3   4

>> B
B =

   5   6
   7   8

>> A/B
ans =

   3  -2
   2  -1

>> A\B
ans =

  -3  -4
   4   5

>> A./B
ans =

   0.2000   0.3333
   0.4286   0.5000

>> A.\B
ans =

   5.0000   3.0000
   2.3333   2.0000

>> inv(A)
ans =

  -2.0000   1.0000
   1.5000  -0.5000

>> A = [2 3 1; 3 1 -1; 2 -1 3]
A =

   2   3   1
   3   1  -1
   2  -1   3

>> b = [11, 2, 9]
b =

   11    2    9

>> x_1 = A/B
error: operator /: nonconformant arguments (op1 is 3x3, op2 is 2x2)
>> x_1 = A./B
error: quotient: nonconformant arguments (op1 is 3x3, op2 is 2x2)
>> A
A =

   2   3   1
   3   1  -1
   2  -1   3

>> b
b =

   11    2    9

>> x_1 = inv(A)*b
error: operator *: nonconformant arguments (op1 is 3x3, op2 is 1x3)
>> x_1 = A*inv(b)
error: inverse: A must be a square matrix
>> inv(b)
error: inverse: A must be a square matrix
>> A
A =

   2   3   1
   3   1  -1
   2  -1   3

>> b
b =

   11    2    9

>> inv(A)
ans =

  -0.058824   0.294118   0.117647
   0.323529  -0.117647  -0.147059
   0.147059  -0.235294   0.205882

>> b = [11;2;9]
b =

   11
    2
    9

>> A
A =

   2   3   1
   3   1  -1
   2  -1   3

>> b
b =

   11
    2
    9

>> inv(A)*b
ans =

   1
   2
   3

>> x_1 = inv(A)*b
x_1 =

   1
   2
   3

>> E.*x_1
ans =

   1   0   0
   0   2   0
   0   0   3

>> x_2 = A/b
error: operator /: nonconformant arguments (op1 is 3x3, op2 is 3x1)
>> x_2 = A\b
x_2 =

   1
   2
   3

>> x_1
x_1 =

   1
   2
   3

>> x_2
x_2 =

   1
   2
   3

>> x_3 = A^(-1)*b
x_3 =

   1
   2
   3

>> x
x =

    1    2    3    4    5    6    7    8    9   10   11   12

>> length(x)
ans = 12
>> size(x)
ans =

    1   12

>> ans[1]
error: parse error:

  syntax error

>>> ans[1]
       ^
>> ans[1][1]
error: parse error:

  syntax error

>>> ans[1][1]
       ^
>> sum(x)
ans = 78
>> A
A =

   2   3   1
   3   1  -1
   2  -1   3

>> sum(A)
ans =

   7   3   3

>> sum(sum(A))
ans = 13
>> sum(A,2)
ans =

   6
   3
   4

>> min(A)
ans =

   2  -1  -1

>> min(min(A))
ans = -1
>> min(A, 2)
ans =

   2   2   1
   2   1  -1
   2  -1   2

>> min(A,[], 2)
ans =

   1
  -1
  -1

>> sort(A)
ans =

   2  -1  -1
   2   1   1
   3   3   3

>> A = [2 3 5; 4 2 6; 7 2 2]
A =

   2   3   5
   4   2   6
   7   2   2

>> I = A==2
I =

  1  0  0
  0  1  0
  0  1  1

>> A(I)
ans =

   2
   2
   2
   2

>> sum(I)
ans =

   1   2   1

>> sum(sum(I))
ans = 4
>> A(A==2)
ans =

   2
   2
   2
   2

>> sum(sum(A(A==2))
sum(sum(A(A==2)))
error: parse error:

  syntax error

>>> sum(sum(A(A==2)))
      ^
>> sum(sum(A(A==2)))
ans = 8
>> sum(A(A==2)))
error: parse error:

  syntax error

>>> sum(A(A==2)))
                ^
>> sum(A(A==2))
ans = 8
>> A
A =

   2   3   5
   4   2   6
   7   2   2

>> find (A==2)
ans =

   1
   5
   6
   9

>> [i, j] = find(A==2)
i =

   1
   2
   3
   3

j =

   1
   2
   2
   3

>> [x,y] = find(A==2)
x =

   1
   2
   3
   3

y =

   1
   2
   2
   3

>> [x y]
ans =

   1   1
   2   2
   3   2
   3   3

>> [x y] = find(A>2 & A<6)
x =

   2
   1
   1

y =

   1
   2
   3

>> [x y]
ans =

   2   1
   1   2
   1   3

>> A
A =

   2   3   5
   4   2   6
   7   2   2

>> I
I =

  1  0  0
  0  1  0
  0  1  1

>> I*5
ans =

   5   0   0
   0   5   0
   0   5   5

>> I*3
ans =

   3   0   0
   0   3   0
   0   3   3

>> R = I*3
R =

   3   0   0
   0   3   0
   0   3   3

>> A+R
ans =

   5   3   5
   4   5   6
   7   5   5

>> A = 3*(A==2)
A =

   3   0   0
   0   3   0
   0   3   3

>>

