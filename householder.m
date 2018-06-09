function [w,x1] = householder(x)
%HOUSEHOLDER calculate Householder vector w to zero-out elements of a vector x
%
% [w,x1] = HOUSEHOLDER(x) Returns a unit-norm vector w and a scalar x1 such
% that
%   (I - 2*w*w')*x = [x1, 0, ... ,0]'
%
%


% TODO
% Initialize
w = zeros(size(x));

% First element
w(1) = -( norm(x) + abs(x(1)) )*exp(1i*angle(x(1)));

% Remaining elements
w(2:end) = -x(2:end);

% x1
x1 = -norm(x)*exp(1i*angle(x(1)));

% Normalize   
w = w/norm(w);