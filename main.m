clear; clc; close all;

numRobots = 5;
world_size = 100;
sim_time = 100;
desired_distance = 5;

pos = gettingStarted(numRobots);

for i = 1:sim_time
    G = getGraph(pos);
    [a,Ve] = getVi(G, desired_distance);
    a
    [alpha, theta] = getAlpha(pos);
    pos = nextStep(pos, a, theta,world_size);
    animate(pos, world_size);
    pause(0.1)
end
