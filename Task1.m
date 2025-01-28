close all;

% Read data from the file
data = dlmread('data1.txt');
rmmissing(data);
% Assuming the data is space/tab delimited
x = data(:, 1);
y = data(:, 2);
% after analysing the data itself, we can now go for the best fitting line
% using linear regression method polynomial regression fit.
n = 1; 
%defining the degree of polynomial as 1
figure
Bestfit = polyfit(x,y,n);
% creating scatter for the data points
scatter (x,y,'red','filled');
hold on; %to merge the next plot with this plot
% Plot the best fit line
x_values = min(x):0.1:max(x); % Generate x values for the line plot
y_values = polyval(Bestfit, x_values); % Calculate corresponding y values
plot(x_values, y_values, 'blue', 'LineWidth', 3, 'DisplayName', 'Best Fit Line');
xlabel('e00');
ylabel('e1');
legend ('Data1', 'Best fit line for Data1');
title('Best Fit Line for the Data 1');
hold off;

% now let us predict the Y values for the data
 y_new = polyval(Bestfit,x);
% quantifying the error with RMS
rms = sqrt (mean(y - y_new)^2);
disp(['RMS value:  ' , num2str(rms)]);