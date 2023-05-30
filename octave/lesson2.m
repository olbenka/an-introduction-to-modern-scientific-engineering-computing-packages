GNU Octave, version 7.3.0
Copyright (C) 1993-2022 The Octave Project Developers.
This is free software; see the source code for copying conditions.
There is ABSOLUTELY NO WARRANTY; not even for MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.  For details, type 'warranty'.

Octave was configured for "x86_64-w64-mingw32".

Additional information about Octave is available at https://www.octave.org.

Please contribute if you find this software useful.
For more information, visit https://www.octave.org/get-involved.html

Read https://www.octave.org/bugs.html to learn how to submit bug reports.
For information about changes from previous versions, type 'news'.

>> A = rand(3,4)
A =

   0.738011   0.223783   0.441226   0.319271
   0.197599   0.495354   0.540028   0.865438
   0.715839   0.608971   0.237855   0.050701

>> A = rand(4,3)
A =

   0.339770   0.492853   0.676966
   0.171301   0.374094   0.361899
   0.813208   0.403484   0.670061
   0.032538   0.231683   0.206819

>> A = rand(3,4)
A =

   3.7358e-01   6.0199e-01   5.4581e-01   9.4103e-01
   8.5379e-01   5.3302e-01   4.2298e-01   8.0549e-03
   2.6096e-01   2.7442e-01   5.1674e-01   3.0844e-01

>> B = rand(4,3)
B =

   0.1264   0.3570   0.9641
   0.4780   0.6660   0.5029
   0.2175   0.3208   0.2014
   0.2822   0.4095   0.2019

>> A1 = A[3:3]
error: parse error:

  syntax error

>>> A1 = A[3:3]
          ^
>> diag(A)
ans =

   0.3736
   0.5330
   0.5167

>> A1 = A(1:3, 1:3, 1:3)
error: A(_,_,3): out of bound 1 (dimensions are 3x4)
>> A1 = A(1:3, 1:3)
A1 =

   0.3736   0.6020   0.5458
   0.8538   0.5330   0.4230
   0.2610   0.2744   0.5167

>> B1 = B(1:3, 1:3)
B1 =

   0.1264   0.3570   0.9641
   0.4780   0.6660   0.5029
   0.2175   0.3208   0.2014

>> AB = A1*B1
AB =

   0.4537   0.7094   0.7728
   0.4547   0.7955   1.1764
   0.2765   0.4417   0.4937

>> det(AB)
ans = -8.2568e-04
>> A2 = rand(5,3)
A2 =

   0.026006   0.314554   0.338817
   0.230043   0.472937   0.973980
   0.374801   0.117728   0.365072
   0.231574   0.448222   0.014254
   0.466169   0.279846   0.032531

>> B2 = rand(3,2)
B2 =

   0.7472   0.1765
   0.3121   0.9090
   0.1178   0.8357

>> C = [A2 zeroes(5,2); B2' eye(2)]
error: 'zeroes' undefined near line 1, column 10
>> C = [A2 zeroes(5,2); B2' eye(2,2)]
error: 'zeroes' undefined near line 1, column 10
>> C = [A2, zeroes(5,2); B2', eye(2,2)]
error: 'zeroes' undefined near line 1, column 10
>> C = [A2, zeros(5,2); B2', eye(2,2)]
C =

   0.0260   0.3146   0.3388        0        0
   0.2300   0.4729   0.9740        0        0
   0.3748   0.1177   0.3651        0        0
   0.2316   0.4482   0.0143        0        0
   0.4662   0.2798   0.0325        0        0
   0.7472   0.3121   0.1178   1.0000        0
   0.1765   0.9090   0.8357        0   1.0000

>> A4 = rand(6,3)
A4 =

   0.1839   0.5086   0.1533
   0.1357   0.2752   0.9906
   0.8753   0.8381   0.9138
   0.9151   0.2628   0.9392
   0.3616   0.9871   0.7700
   0.6852   0.6904   0.6403

>> B = A4(1:3, 1:3)
B =

   0.1839   0.5086   0.1533
   0.1357   0.2752   0.9906
   0.8753   0.8381   0.9138

>> det(B)
ans = 0.2519
>> C4 = inv(B)
C4 =

  -2.297404  -1.334606   1.832214
   2.949194   0.134602  -0.640595
  -0.504492   1.154927  -0.073079

>> B*C4
ans =

   1.0000   0.0000  -0.0000
   0.0000   1.0000  -0.0000
   0.0000        0   1.0000

>> A5 = rand(20,20)
A5 =

 Columns 1 through 11:

   7.1667e-01   2.1254e-01   2.0232e-02   5.2253e-02   3.7136e-01   3.1414e-01   5.1561e-01   1.9715e-01   5.7600e-01   5.3609e-01   2.4671e-01
   2.2178e-01   8.5342e-01   1.6455e-01   9.2939e-01   5.7045e-01   4.8798e-03   1.6540e-01   1.9204e-01   4.6243e-01   4.1993e-01   6.8879e-01
   8.1047e-01   2.2352e-01   7.0438e-01   3.9332e-01   1.3246e-01   8.3286e-01   5.4089e-01   4.6014e-01   1.9828e-01   8.8861e-01   2.0676e-01
   7.5071e-01   2.2015e-01   6.7517e-02   4.3188e-01   2.6417e-01   8.5016e-01   6.5666e-01   8.0038e-02   9.2109e-01   2.1262e-01   6.6413e-01
   3.8353e-01   1.0772e-01   7.8546e-02   3.6579e-01   1.8075e-01   2.4899e-01   7.4834e-01   1.3427e-01   6.7356e-01   1.9773e-01   9.8852e-01
   6.8167e-01   7.6654e-01   1.8955e-01   9.0924e-01   5.0001e-01   9.9081e-01   5.5126e-03   9.7369e-01   4.3375e-01   4.2314e-01   5.1017e-01
   4.0550e-01   3.1010e-01   9.2799e-01   9.1013e-01   7.5037e-01   4.6371e-01   7.7573e-01   6.0851e-01   1.2793e-01   5.4189e-01   8.3189e-02
   2.6154e-01   2.7598e-01   6.0567e-01   7.8622e-01   7.6410e-01   3.0749e-01   4.8762e-01   3.6695e-01   7.9609e-01   2.0475e-01   8.5222e-01
   4.1866e-03   1.1287e-01   9.5660e-01   2.2409e-01   4.9902e-01   7.7002e-01   4.3279e-01   6.7292e-01   7.3198e-02   7.4508e-01   1.9314e-01
   5.2842e-01   8.0018e-01   4.9388e-01   8.8613e-01   2.2725e-01   1.5074e-01   9.4413e-01   9.9372e-01   9.0394e-01   9.2785e-01   6.1474e-02
   9.8820e-01   2.8111e-01   6.9716e-02   9.1672e-01   6.1531e-01   7.1767e-01   9.0924e-01   3.1318e-01   8.3555e-01   8.6063e-01   5.1422e-02
   2.0698e-01   8.8718e-02   2.8681e-01   8.9341e-01   1.5215e-01   7.6248e-01   5.4263e-02   4.1395e-01   8.0048e-01   8.1633e-01   7.4056e-01
   5.2143e-01   2.6266e-01   4.2177e-02   6.8656e-01   5.4489e-02   5.5939e-01   4.9145e-01   6.4639e-01   2.8390e-01   2.4546e-01   9.3489e-01
   5.4296e-01   2.5812e-01   2.8680e-01   7.3287e-01   6.4739e-01   3.8014e-01   3.3253e-01   2.5968e-01   7.8109e-01   4.9068e-01   2.5087e-02
   7.5068e-01   8.9159e-01   2.3965e-01   7.2363e-01   2.6371e-01   4.1703e-01   3.1045e-01   1.9617e-02   7.9740e-01   4.4770e-01   6.7370e-01
   9.7269e-02   1.6503e-01   8.2170e-01   3.8243e-01   4.4697e-01   4.1658e-01   4.3206e-01   5.9189e-01   4.6572e-02   7.1990e-02   1.2162e-01
   4.6443e-01   4.3097e-01   3.8149e-01   9.7694e-01   7.1268e-01   6.8046e-02   1.2931e-01   6.5956e-01   1.4766e-01   7.6245e-01   6.1999e-01
   4.9411e-01   5.7752e-01   6.9084e-01   1.5415e-01   2.3470e-01   5.5679e-01   4.5489e-01   2.4839e-01   5.8047e-01   7.0673e-01   4.6597e-01
   8.4664e-01   8.8660e-01   4.2735e-01   4.2111e-01   6.5759e-01   8.6774e-03   7.5153e-02   3.1527e-01   6.6368e-01   3.2051e-01   1.3940e-01
   8.1683e-01   7.1340e-01   7.6414e-01   2.2953e-01   8.7106e-01   1.9347e-01   7.6876e-01   2.9946e-01   2.6768e-02   4.1742e-01   3.3025e-01

 Columns 12 through 20:

   5.0233e-01   4.1868e-01   6.3928e-02   7.3985e-01   9.2295e-01   7.1965e-01   6.0238e-01   2.5097e-01   2.4333e-01
   3.8307e-01   4.9552e-01   7.5424e-01   5.1505e-01   1.1928e-01   5.8122e-01   6.9230e-01   3.0016e-01   1.1842e-01
   9.3062e-01   9.2266e-01   1.7176e-01   1.5965e-02   4.4590e-01   6.3054e-01   5.6805e-01   4.9732e-01   4.8825e-01
   8.4972e-01   1.5504e-01   7.8721e-01   1.6687e-01   8.2863e-02   1.8356e-01   5.2706e-01   8.3813e-01   6.5013e-01
   4.9051e-01   9.4090e-01   2.1067e-01   1.3786e-01   3.4315e-01   9.6792e-01   5.6920e-01   7.5200e-01   2.5789e-01
   9.4840e-01   2.1200e-01   5.3213e-03   3.1256e-02   5.2961e-02   8.6207e-01   8.8744e-01   7.4176e-01   7.3487e-01
   3.1314e-01   9.8030e-02   9.4620e-01   5.7547e-01   8.8748e-01   4.3708e-02   9.1237e-01   6.4802e-01   1.9731e-01
   7.9995e-01   9.9964e-01   6.6841e-01   9.0848e-01   9.5876e-01   4.3882e-01   2.7802e-01   6.6105e-01   3.2849e-02
   9.6362e-01   3.1775e-02   3.0670e-01   6.2931e-01   8.2300e-01   8.4505e-02   8.1853e-01   4.6622e-01   2.7557e-01
   9.2152e-01   4.1813e-01   1.8575e-01   8.3986e-01   1.6732e-01   8.9133e-01   4.8359e-01   4.5069e-01   9.9188e-02
   1.3565e-01   6.1858e-02   6.7722e-02   6.6856e-01   2.0470e-01   2.2511e-01   7.2311e-01   8.6543e-02   7.5780e-02
   2.1803e-01   9.0494e-01   1.1730e-01   9.6765e-02   4.6210e-01   6.1220e-01   2.1772e-01   2.1362e-01   9.5910e-01
   3.8336e-01   5.6213e-01   4.3831e-01   9.2300e-01   2.8703e-01   7.1881e-01   4.4170e-01   5.1437e-01   3.8769e-01
   1.4487e-01   4.6824e-01   9.9121e-01   5.5191e-02   1.6805e-01   7.5288e-01   8.9635e-01   6.4539e-01   4.4813e-01
   1.1313e-01   6.7812e-01   3.5464e-01   4.4502e-01   3.2887e-01   7.1844e-02   3.4868e-01   8.6549e-02   1.8220e-01
   2.5998e-01   6.4323e-03   7.1323e-01   8.2003e-01   4.2718e-01   6.7066e-01   7.4887e-01   8.0844e-01   4.5921e-01
   6.7447e-01   2.9219e-01   6.7675e-01   7.2637e-01   6.7498e-01   6.0302e-01   5.5894e-01   7.1701e-01   9.6986e-01
   5.8445e-01   4.9029e-01   8.4703e-02   6.4645e-01   2.6334e-01   5.3513e-01   2.2256e-01   8.4891e-01   2.9770e-01
   9.6874e-02   6.3430e-01   6.4462e-01   3.6153e-01   8.4621e-01   6.8633e-01   9.2368e-01   7.5240e-01   5.0630e-01
   4.4876e-01   2.7288e-01   5.8366e-01   6.0915e-01   9.5724e-01   8.0760e-01   6.6212e-01   1.2248e-01   3.4932e-01

>> b5 = eig(A5)
b5 =

   9.6092 +      0i
   0.6224 + 1.0832i
   0.6224 - 1.0832i
  -1.2613 +      0i
  -0.5824 + 0.7843i
  -0.5824 - 0.7843i
  -1.0209 +      0i
  -0.7975 +      0i
   1.1716 +      0i
   0.0708 + 0.8404i
   0.0708 - 0.8404i
   0.8548 + 0.2934i
   0.8548 - 0.2934i
   0.4891 + 0.6770i
   0.4891 - 0.6770i
  -0.0980 + 0.4599i
  -0.0980 - 0.4599i
  -0.3389 +      0i
   0.4328 +      0i
   0.1357 +      0i

>> b = sort(b5)
b =

   0.1357 +      0i
  -0.3389 +      0i
   0.4328 +      0i
  -0.0980 - 0.4599i
  -0.0980 + 0.4599i
  -0.7975 +      0i
   0.4891 - 0.6770i
   0.4891 + 0.6770i
   0.0708 - 0.8404i
   0.0708 + 0.8404i
   0.8548 - 0.2934i
   0.8548 + 0.2934i
  -0.5824 - 0.7843i
  -0.5824 + 0.7843i
  -1.0209 +      0i
   1.1716 +      0i
   0.6224 - 1.0832i
   0.6224 + 1.0832i
  -1.2613 +      0i
   9.6092 +      0i

>> diag &
ans = &
>> diag ?
error: Invalid call to diag.  Correct usage is:

 -- M = diag (V)
 -- M = diag (V, K)
 -- M = diag (V, M, N)
 -- V = diag (M)
 -- V = diag (M, K)

Additional help for built-in functions and operators is
available in the online version of the manual.  Use the command
'doc <topic>' to search the manual index.

Help and information about Octave is also available on the WWW
at https://www.octave.org and via the help@octave.org
mailing list.
>> diag(2, 1, 1)
ans = 2
>> diag(-2, 1, 1)
ans = -2
>> A = diag(-2,1,1)
A = -2
>> n = 6
n = 6
>> A8 = zeros(n)
A8 =

   0   0   0   0   0   0
   0   0   0   0   0   0
   0   0   0   0   0   0
   0   0   0   0   0   0
   0   0   0   0   0   0
   0   0   0   0   0   0

>> x = [-2 -2 -2 -2 -2 -2]
x =

  -2  -2  -2  -2  -2  -2

>> A8 = diag(x)
A8 =

Diagonal Matrix

  -2   0   0   0   0   0
   0  -2   0   0   0   0
   0   0  -2   0   0   0
   0   0   0  -2   0   0
   0   0   0   0  -2   0
   0   0   0   0   0  -2

>> x(1:n) = -2
x =

  -2  -2  -2  -2  -2  -2

>> A8 = diag(x)
A8 =

Diagonal Matrix

  -2   0   0   0   0   0
   0  -2   0   0   0   0
   0   0  -2   0   0   0
   0   0   0  -2   0   0
   0   0   0   0  -2   0
   0   0   0   0   0  -2

>> y(1:n-1) = 1
y =

   1   1   1   1   1

>> C8 = diag(x) + diag(y,1) + diag(y,-1) + diag(1, 5)+ diag(1,-5)
C8 =

  -2   1   0   0   0   1
   1  -2   1   0   0   0
   0   1  -2   1   0   0
   0   0   1  -2   1   0
   0   0   0   1  -2   1
   1   0   0   0   1  -2

>> C8 = diag(x) + diag(y,1) + diag(y,-1) + diag(1, (n-1))+ diag(1,-(n-1))
C8 =

  -2   1   0   0   0   1
   1  -2   1   0   0   0
   0   1  -2   1   0   0
   0   0   1  -2   1   0
   0   0   0   1  -2   1
   1   0   0   0   1  -2

>>  = 10
error: parse error:

  syntax error

>>>  = 10
     ^
>>  = 10
error: parse error:

  syntax error

>>>  = 10
     ^
>> n = 10
n = 10
>> C8
C8 =

  -2   1   0   0   0   1
   1  -2   1   0   0   0
   0   1  -2   1   0   0
   0   0   1  -2   1   0
   0   0   0   1  -2   1
   1   0   0   0   1  -2

>> C8 = diag(x) + diag(y,1) + diag(y,-1) + diag(1, (n-1))+ diag(1,-(n-1))
error: operator +: nonconformant arguments (op1 is 6x6, op2 is 10x10)
>> C8 = diag(x(1:n) = -2) + diag(y(1:n-1) = 1,1) + diag(y(1:n-1) = 1,-1) + diag(1, 5)+ diag(1,-5)
error: operator +: nonconformant arguments (op1 is 2x2, op2 is 6x6)
>> C8 = diag([1:n] = -2) + diag([1:n-1] = 1,1) + diag([1:n-1] = 1,-1) + diag(1, 5)+ diag(1,-5)
error: parse error:

  invalid left hand side of assignment

>>> C8 = diag([1:n] = -2) + diag([1:n-1] = 1,1) + diag([1:n-1] = 1,-1) + diag(1, 5)+ diag(1,-5)
                    ^
>> C8 = diag(ones(1,n)*-2) + diag(ones(1,n-1),1) + diag(ones(1,n-1),-1) + diag(1, (n-1))+ diag(1,-(n-1))
C8 =

  -2   1   0   0   0   0   0   0   0   1
   1  -2   1   0   0   0   0   0   0   0
   0   1  -2   1   0   0   0   0   0   0
   0   0   1  -2   1   0   0   0   0   0
   0   0   0   1  -2   1   0   0   0   0
   0   0   0   0   1  -2   1   0   0   0
   0   0   0   0   0   1  -2   1   0   0
   0   0   0   0   0   0   1  -2   1   0
   0   0   0   0   0   0   0   1  -2   1
   1   0   0   0   0   0   0   0   1  -2

>> C9 = rand(9,9)
C9 =

   0.521312   0.242592   0.500672   0.454728   0.480978   0.191491   0.137685   0.788092   0.086827
   0.434279   0.268196   0.219896   0.533784   0.912427   0.175873   0.938560   0.474172   0.779006
   0.264734   0.722498   0.244055   0.138794   0.152762   0.670757   0.460635   0.516679   0.604087
   0.173989   0.481772   0.627676   0.790656   0.903173   0.683331   0.122594   0.127395   0.139087
   0.600913   0.467923   0.290423   0.547331   0.673194   0.670942   0.473289   0.967224   0.805413
   0.639872   0.693392   0.996696   0.710755   0.107238   0.476824   0.817987   0.687562   0.413591
   0.422729   0.817358   0.775062   0.601427   0.980232   0.359094   0.487983   0.152505   0.142651
   0.436821   0.796418   0.635476   0.126415   0.097096   0.709261   0.038418   0.569537   0.311892
   0.850327   0.870082   0.967026   0.581095   0.859486   0.730898   0.833875   0.449664   0.486311

>> C9 = rand(8,8)
C9 =

   0.220208   0.318165   0.863122   0.929078   0.714638   0.127039   0.900681   0.720395
   0.296479   0.013490   0.877239   0.487247   0.498508   0.792035   0.123871   0.575623
   0.857349   0.473046   0.532067   0.759520   0.126517   0.926345   0.901886   0.521280
   0.656846   0.202646   0.358914   0.832298   0.487539   0.196171   0.353674   0.080154
   0.721752   0.818837   0.237296   0.747800   0.859376   0.176043   0.478469   0.323046
   0.825955   0.850034   0.287074   0.298305   0.285053   0.254392   0.014012   0.674022
   0.617540   0.992127   0.748659   0.698269   0.188094   0.082998   0.991794   0.947696
   0.522227   0.923052   0.998141   0.567460   0.051439   0.527751   0.023914   0.205416

>> max ?
error: Invalid call to max.  Correct usage is:

 -- max (X)
 -- max (X, [], DIM)
 -- [W, IW] = max (X)
 -- max (X, Y)

Additional help for built-in functions and operators is
available in the online version of the manual.  Use the command
'doc <topic>' to search the manual index.

Help and information about Octave is also available on the WWW
at https://www.octave.org and via the help@octave.org
mailing list.
>> max(C9)
ans =

   0.8573   0.9921   0.9981   0.9291   0.8594   0.9263   0.9918   0.9477

>> max(max(c9))
error: 'c9' undefined near line 1, column 9
>> max(max(C9))
ans = 0.9981
>> max(C9')
ans =

   0.9291   0.8772   0.9263   0.8323   0.8594   0.8500   0.9921   0.9981

>> C9
C9 =

   0.220208   0.318165   0.863122   0.929078   0.714638   0.127039   0.900681   0.720395
   0.296479   0.013490   0.877239   0.487247   0.498508   0.792035   0.123871   0.575623
   0.857349   0.473046   0.532067   0.759520   0.126517   0.926345   0.901886   0.521280
   0.656846   0.202646   0.358914   0.832298   0.487539   0.196171   0.353674   0.080154
   0.721752   0.818837   0.237296   0.747800   0.859376   0.176043   0.478469   0.323046
   0.825955   0.850034   0.287074   0.298305   0.285053   0.254392   0.014012   0.674022
   0.617540   0.992127   0.748659   0.698269   0.188094   0.082998   0.991794   0.947696
   0.522227   0.923052   0.998141   0.567460   0.051439   0.527751   0.023914   0.205416

>> max(C9')
ans =

   0.9291   0.8772   0.9263   0.8323   0.8594   0.8500   0.9921   0.9981

>> max(C9)
ans =

   0.8573   0.9921   0.9981   0.9291   0.8594   0.9263   0.9918   0.9477

>> max(max(C9))
ans = 0.9981
>> max(max(C9'))
ans = 0.9981
>>
