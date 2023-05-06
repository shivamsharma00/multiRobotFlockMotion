function obj = nextStep(pos, A, theta, world_size)
    s = [];
    numRobots = length(pos(1,:));
    for i = 1:numRobots
        a = linspace(i,i,numRobots-i);
        s = cat(2, s, a);
    end
    for i = 1:numRobots
        obj(1,i) = pos(1,i) + pos(4,i)*cos(pos(3,i));
        obj(2,i) = pos(2,i) + pos(4,i)*sin(pos(3,i));
        obj(3,i) = pos(3,i) + theta(i);
        if (A(i) > 3000)
            A(i)= 1;
        
        else if (A(i) < -100)
            A(i)=-1;
            else
        obj(4,i) = A(i)/3000;
                
            end
        
        A(i)
        if obj(1,i)>world_size || obj(2,i)>world_size
            obj(1,i) = pos(1,i);
            obj(2,i) = pos(2,i);
            obj(3,i) = wrapToPi(pos(3,i) - pi/2);
            obj(4,i) = pos(4,i);
        end
    end
end