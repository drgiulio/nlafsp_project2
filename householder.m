function [w,x1] = householder(x)
%HOUSEHOLDER calculate Householder vector w to zero-out elements of a vector x
%
% [w,x1] = HOUSEHOLDER(x) Returns a unit-norm vector w and a scalar x1 such
% that
%   (I - 2*w*w')*x = [x1, 0, ... ,0]'
%
%


% TODO
opt_angle = angle(x(1,1)) + pi;
x1 = norm(x)*(cos(opt_angle) + 1i*sin(opt_angle));
x_prime = [x1 zeros(1,length(x)-1)].';

w = x_prime - x;
 
w = w/norm(w);
end