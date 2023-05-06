function animate(pos, world_size)
    X1=[pos(1,:),pos(1,:)+cos(pos(3,:));pos(2,:),pos(2,:)+sin(pos(3,:))];                                     %calculation of 3 coordinate systems for every thi, alpha, om, or2 and or3
    Y1=[pos(2,:),pos(2,:);pos(2,:)+cos(pos(3,:)),pos(2,:)+sin(pos(3,:))];
    plot(pos(1,:), pos(2,:), 'ro');
    xlim([-world_size world_size])
    ylim([-world_size world_size])
    hold on
    for i = 1:length(pos(1,:))
        plot([pos(1,i) pos(1,i)+cos(pos(3,i))],[pos(2,i) pos(2,i)+sin(pos(3,i))],'-.black');
    end
    hold off
end