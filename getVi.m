function [V,Vij] = getVi(G, desired_distance)
    
    s = [];
    t = [];
    numRobots = length(table2array(G.Nodes));
    for i = 1:numRobots
        a = linspace(i,i,numRobots-i);
        s = cat(2, s, a);
        for j = i+1:numRobots
            t = cat(2, t, j);
        end
    end
    a = 1000/desired_distance^2;
    w = table2array(G.Edges(:,2));
    
    Vij = a*((w-desired_distance).^2);  % Vij -> 1000 when distance -> 0; Vij = 0 when distance = desired distance
    
    for i = 1:numRobots
        V(i) = sum(Vij(s==i | t==i));
    end
    
end