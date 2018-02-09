function X = f_intersection( P1,P2,x1,x2 )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

x1 = [x1;ones(1,size(x1,2))];
x2 = [x2;ones(1,size(x2,2))];

X = [];

for i = 1:size(x1,2)
    
    L = [star(x1(:,i))*P1; star(x2(:,i))*P2];  
    [~,~,V] = svd(L);
    X = [X, V(:,end)./V(end,end)];
    
end

X = X(1:3,:);
end

