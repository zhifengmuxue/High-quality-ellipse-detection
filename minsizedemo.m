% minsize 长短轴绝对大小 
im = imread('.\pics\4.png');
    minsize = [10,30,60,90];
    for k = 1:4
        % 找到所有椭圆
        [ellipses, L, posi] = ellipseDetectionByArcSupportLSs(im, 180, 0.3, 0);
        % 找到尺寸较小的
        b = ellipses(:,4); % 短轴长
        idx = find(b<minsize(k));
        % 剔除
        ellipses(idx,:) = [];
        % 显示
        subplot(2,2,k)
        drawEllipses(ellipses',im);
        title(['\fontsize{14}minsize = ',num2str(minsize(k))])
    end 
