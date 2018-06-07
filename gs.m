function [Q,R] = gs(A)

n = size(A,2);
m = size(A,1);

Q = zeros(m,n);
R = zeros(n,n);

for i=1:n
    v = A(:,i);
    %TODO
    for k = 1:i-1
        R(k,i) = Q(:,k)'*A(:,i);
        v = v - R(k,i)*Q(:,k);
    end
    R(i,i) = norm(v);
    Q(:,i) = v / R(i,i);
end

end