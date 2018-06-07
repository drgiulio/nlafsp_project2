
m = 5;

R = randn(m,m) + 1i* randn(m,m);
R = triu(R);

x = randn(m,2) + 1i*randn(m,2);

y = backsub(R,x);

x2 = R*y;

if norm(x-x2) > 5*numel(x)*eps
    error('Backsubstitution failed')
end

disp('OK')