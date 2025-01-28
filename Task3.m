close all;
data3 = dlmread ('data3.txt'); % reading the data
x = data3(:,1);
y = data3(:,2);
pd1 = fitdist(x,'Normal'); % fitting normal distribusion to the data
% finding mean for X position
[Mean,Standard_deviation,muci,sci] = normfit(x);
pd2 = fitdist(y,'Normal'); % fitting normal dist.
% finding the mean for Y position data
[Mean2,Standard_deviation2,muci2,sci2] = normfit(y);
% Generating the Uncertainity Matrix for the covariance and quantifying the
% uncertainity
uncertainity_matrix = cov (x,y);


