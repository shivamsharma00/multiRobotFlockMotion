function G = getGraph(pos, a, theta)
    s = [];
    t = [];
    w = [];
    n = {'robot1', 'robot2', 'robot3', 'robot4', 'robot5'};
    numRobots = length(pos(1,:));
    for i = 1:numRobots
        a = linspace(i,i,numRobots-i);
        s = cat(2, s, a);
        for j = i+1:numRobots
            t = cat(2, t, j);
            distance = sqrt((pos(1,j)-pos(1,i))^2+((pos(2,j)-pos(2,i))^2));
            w = cat(2, w, distance);
        end
    end
    G = graph(s,t,w,n);
end