function Y = applyQHe(W,X)
%APPLYQHE apply Householder transformations
%
% Y = APPLYQHE(W,X) applies the Householder transformations corresponding
% to the vectors in the lower trianguler part of W to the matrix X such
% that if W is result of a Householder QR-decomposition we have Y = Q'*X.
%
m = size(W,1);
n = size(W,2);
Y = X;
for i = 1:n
    %TODO
    F = eye(m-i+1)-2*W(i:end,i)*W(i:end,i)';%./(norm(W(i:end,i))^2);
    %Y = [eye(i-1),zeros(i-1);zeros(n-i+1,i-1),F]*Y;
    Y = [eye(i-1),zeros(i-1,size(F,2));zeros(size(F,1),i-1),F]*Y;
end