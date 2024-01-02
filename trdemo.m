%% 第二个参数 Tr 椭圆边缘点数量比列系数（用于判断构成一个椭圆的点数是否足够，不代表具体的值）
 im = imread('.\pics\493.jpg');
    
 Trs = [0.1,0.2,0.3,0.5,0.7,0.9];
 for k = 1:6
	 % Tac统一用30
     [ellipses, L, posi] = ellipseDetectionByArcSupportLSs(im, 30, Trs(k), 0); 
        
     subplot(2,3,k)
     drawEllipses(ellipses',im); 
     title(['\fontsize{14}Tr = ',num2str(Trs(k))])
 end
