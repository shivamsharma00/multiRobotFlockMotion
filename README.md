# Multi-Robot Simulator
This repository contains MATLAB code for a multi-robot simulator.

### Getting Started
The gettingStarted function initializes the position, orientation, and speed of the robots randomly within a 100x100 world. The main function calls this function and then simulates the robot behavior for 100 iterations with a desired distance of 5 between each robot.

### Usage
The main function contains the simulation loop that runs for sim_time iterations. At each iteration, it calls getGraph to get the adjacency matrix of the graph formed by the robots, getVi to get the desired relative velocities between robots, getAlpha to get the sum of the relative speeds between each robot and nextStep to update the position, orientation, and speed of each robot. Finally, it calls animate to visualize the simulation.

### Acknowledgments
This code was created as part of a robotics project at XYZ University. We would like to thank our advisors for their guidance and support.
