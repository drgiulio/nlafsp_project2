function y = backsub(R,x)
%BACKSUB
%
% y = BACKSUB(R,x) calculates y = inv(R)*x for an upper triangular matrix R
% via backsubstitution

n = size(R,1);

y = zeros(size(x));
for i = n:-1:1
    %TODO
    summation = 0;
    for j=i+1:n
        summation = summation + R(i,j)*y(j,:);
    end
    y(i,:) = (x(i,:)-summation)/R(i,i);
end