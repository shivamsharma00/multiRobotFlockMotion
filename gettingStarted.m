function pos = gettingStarted(numRobots)

    init_pos = rand(4,numRobots);
    init_pos(1,:) = init_pos(1,:)*10;       % robot x coordinate
    init_pos(2,:) = init_pos(2,:)*10;       % robot y coordinate
    init_pos(3,:) = init_pos(3,:)*2*pi - pi;     % robot orientation
    init_pos(4,:) = init_pos(4,:)*1;        % robot speed
    pos = init_pos;
end