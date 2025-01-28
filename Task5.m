close all;
x = linspace(0,20,2001); % Generate a matrix at the interval of 0.01 sec for 20 sec
velocity = 10; %m/s, for easy graph, we too velocity as 10 instead of 100
y = x*velocity;% Generating a vector 
z = randn(1, 2001); % Generating the random numbers for noise from guassian distribusion
ZX = y+z; % adding guassian noise to velocity
plot (x,y,'LineWidth',3,'Color','Blue'); % plotting velocity vs time graph
hold on;
plot (x,ZX,'LineWidth',0.5,'Color','red'); %plotting noisy velocity vs time
xlabel('Time');
ylabel('Velocity');
legend ('velocity without white noise ', 'guassian white noise in the velocity');
title('Noise Contaminated positional data from train');
hold off;
