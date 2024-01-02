im = imread('.\pics\493.jpg'); 
%% 输出参数
[ellipses, E, candidates] = ellipseDetectionByArcSupportLSs(im, 155, 0.6, 0); 

% 显示结果
figure(2)
imshow(im)
drawEllipses(ellipses',im);

figure(3)
imshow(E);

figure(4)
imshow(E)
drawEllipses(candidates',im);