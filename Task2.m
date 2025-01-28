close all;
% Read data from the file
data2 = dlmread('data2.txt');
rmmissing(data2); %removes the missing values
% Assuming the data is space/tab delimited
x = data2(:, 1);
y = data2(:, 2);
% after analysing the data itself, we can now go for the best fitting line
% using linear regression method polynomial regression fit.
n = 3; 
%defining the degree of polynomial as 3
figure
Bestfit2 = polyfit(x,y,n);
scatter (x,y,'Black','filled');
hold on; %to merge the next plot with this plot
f = polyval(Bestfit2,x);
plot(x,f,'-', 'LineWidth',1 ,'Color','Red')
xlabel('X column 1');
ylabel('Y column 2');
legend ('Dataset2', 'Best fit for Data 2');
title('Best Fit Line for the Data 2');
hold off;

% now let us predict the Y values for the data
 y_new = polyval(Bestfit2,x);
% quantifying the error with RMS
rms2 = sqrt (mean(y - y_new)^2);
disp(['RMS2 value:  ' , num2str(rms2)]);