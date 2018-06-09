m = 100;

x = linspace(0.1, 1, m)';

% This code generates an m x m Vandermonde matrix
Vfull = vander(x);
Vfull = fliplr(Vfull);

n = 24;%12;%7;
y = sin(1./x); 

%TODO: calculate V

V = Vfull(:,1:n);

%TODO: solution with classical GS
[Q,R] = gs(V);
aGS = backsub(R,Q'*y);

%TODO: solution with modified GS
[Q,R] = mgs(V);
aMGS = backsub(R,Q'*y);

%TODO: solution with Housholder QR
[W,R] = hhqr(V);
Y = applyQHe(W,y);
aHH = backsub(R(1:n,:),Y);
aHH = real(aHH(1:n));

figure 
hold all

plot(x,[y, polyval(aGS(end:-1:1),x), polyval(aMGS(end:-1:1),x), polyval(aHH(end:-1:1),x)])

legend('orig','gs','mgs','hh')