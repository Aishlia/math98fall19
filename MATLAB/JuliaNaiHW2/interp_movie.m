% Julia Nai
% 3034984486

function foo = interp_movie(pts)
    pts = sortrows(pts);
    x = pts(:,1);
    y = pts(:,2);
    figure
    plot(x,y,'o',...
         'MarkerSize',10)
    xlim([min(x)-1 max(x)+1])
    ylim([min(y)-1 max(y)+1])
    hold on
    pause(1)
    
    for i = 1:length(x)
        filled_pt_x = x(1:i);
        filled_pt_y = y(1:i);
        plot(filled_pt_x,filled_pt_y,'.',...
            'MarkerSize',40,...
            'MarkerEdgeColor', 'blue');
        
        p = polyfit(x(1:i),y(1:i),i);
        x1 = linspace(pts(1,1), pts(i,1));
        y1 = polyval(p,x1);
        pl = plot(x1,y1,...
            'Color','blue');
        pause(1)
        delete(pl)
    end
    pl = plot(x1,y1,...
            'Color','blue');
end