function [Q,R] = gs(A)

n = size(A,2);
m = size(A,1);

Q = zeros(m,n);
R = zeros(n,n);

for j=1:n
    v = A(:,j);
    %TODO
    for i=1:j-1
        R(i,j) = Q(:,i)'*A(:,j);
        v = v - R(i,j)*Q(:,i);
    end
    R(j,j) = norm(v);
    Q(:,j) = v/R(j,j);
end

end