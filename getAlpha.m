function [alpha,theta] = getAlpha(pos)
    for i = 1:length(pos(1,:))
        for j = 1:length(pos(1,:))
            speedDiffx = pos(4,i)*cos(pos(3,i)) - pos(4,j)*cos(pos(3,j));
            speedDiffy = pos(4,i)*sin(pos(3,i)) - pos(4,j)*sin(pos(3,j));
            speedDiff(j) = sqrt(speedDiffx^2+speedDiffy^2);
            angleDiff(j) = atan2(speedDiffy,speedDiffx);
        end
        alpha(i) = sum(speedDiff);
        theta(i) = sum(angleDiff)/length(angleDiff);
    end
end