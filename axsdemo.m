    im = imread('.\pics\6.png');
    axs = [pi/2,0,pi/4,-pi/4];
    for k = 1:4
        % 找到所有椭圆
        [ellipses, L, posi] = ellipseDetectionByArcSupportLSs(im, 180, 0.3, 0);
        % 找到超出指定轴位范围的
        ax = ellipses(:,5);
        idx = find(ax<axs(k)-0.3|ax>axs(k)+0.3);
        % 剔除
        ellipses(idx,:) = [];
        % 显示
        subplot(2,2,k)
        drawEllipses(ellipses',im);
        title(['\fontsize{14}ax = ',num2str(axs(k)/pi*180),'°'])
    end 
