%% 第一个参数 Tac 椭圆完整度
im = imread('.\pics\1.png');

Tacs = [90,180,190,270,300,350];
for k = 1:6
% Tr统一用0.1
[ellipses, L, posi] = ellipseDetectionByArcSupportLSs(im, Tacs(k), 0.1, 0); 

subplot(2,3,k),drawEllipses(ellipses',im); 
title(['\fontsize{14}Tac = ',num2str(Tacs(k))])
end
