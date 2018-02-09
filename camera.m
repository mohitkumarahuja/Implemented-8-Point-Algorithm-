function [ P ] = camera( K,look,cop,up )
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here

R(3,:) = ((look - cop)/norm(look-cop))';
R(1,:) = cross(up',R(1,:));
R(1,:) = R(1,:)/norm(R1,:);
R(2,:) = cross(R(3,:),R(1,:));

P = K*[R, -R*cop];

end

