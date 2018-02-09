function [ x ] = projection( P,X )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

X = [X;ones(1,size(X,2))];

x = P * X;

 x = x ./repmat(x(3,:),3,1) ;
%  figure(1)
% plot(x(1,:),x(2,:),'o')
% figure(2)
% plot(X(1,:),X(2,:),'o')

x = x(1:2,:);
end

