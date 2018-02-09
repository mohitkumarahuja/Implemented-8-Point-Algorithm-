X = rand(3,12);
P = rand(3,4);
x = projection (P,X)
P_est = resection(x,X)
 
 P./P(3,4);
 P_est./P_est(3,4);
 rank([P(:),P1(:)])
 x_est = projection(P_est,X);
 norm(x-x_est)
 
 % Two views stuff
 % left
 P1 = rand(3,4);
 X1 = projection(P1,X);
 % Right
 P2 = rand(3,4);
 X2 = projection(P2,X);
 X_est = f_intersection(P1,P2,X1,X2) 
 norm(X-X_est)
 