    im = imread('.\pics\5.png');
    ratio = [2,1.7,1.5,1.4];
    for k = 1:4
        % 找到所有椭圆
        [ellipses, L, posi] = ellipseDetectionByArcSupportLSs(im, 180, 0.3, 0);
        % 找到过大的
        a = ellipses(:,3);
        b = ellipses(:,4);
        idx = find(a./b>ratio(k));
        % 剔除
        ellipses(idx,:) = [];
        % 显示
        subplot(2,2,k)
        drawEllipses(ellipses',im);
        title(['\fontsize{14}minsize = ',num2str(ratio(k))])
    end 
