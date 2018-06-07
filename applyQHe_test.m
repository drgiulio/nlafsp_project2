m = 10;

x = randn(10,1) + 1i*randn(10,1);

% assuming householder is correct, test it with householder_test
[w,x1] = householder(x);

if norm(applyQHe(w,x)- [x1; zeros(m-1,1)]) > 2*m*eps
    error('applyQHe fails for column vector input')
end
    
disp('OK')