%% 第三个参数sp 椭圆正负性
if 1
    im = imread('.\pics\2.png');
    
    sp = [1,-1,0];
    for k = 1:3
        [ellipses, L, posi] = ellipseDetectionByArcSupportLSs(im, 30, 0.2, sp(k));
        
        subplot(1,3,k)
        drawEllipses(ellipses',im); 
        title(['\fontsize{14}sp = ',num2str(sp(k))])
    end
end
