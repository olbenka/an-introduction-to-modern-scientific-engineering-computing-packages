p = [1 0 0 -1];
res = roots(p);

iter = 40;
f = @(z) z.^3 - 1;
df = @(z) 3*z.^2;
eps = 1e-6;

x = linspace(-2, 2, 401);
y = linspace(-2, 2, 401);
[X,Y] = meshgrid(x,y);
Z = X + i*Y;

n = 0;
while n < iter
    Z = Z - (f(Z)./df(Z));
    n = n + 1;
end

Z1 = abs(Z - res(1)) < eps;
Z2 = abs(Z - res(2)) < eps;
Z3 = abs(Z - res(3)) < eps;
Z4 = ~(Z1 | Z2 | Z3);
C = ones(size(Z1));
C(Z1) = 1;
C(Z2) = 2;
C(Z3) = 3;
C(Z4) = 4;

image([-2 2], [-2 2], C);
colormap([1 0 0; 0 1 0; 0 0 1; 0 0 0]);
axis xy;
