clear all
close all
clc
% Let's assume a cost function for a model is: y = 3*x^2 - 2*x + 5
% To use gradient descent for minimizing this function over x
% (finding x such that y is minimum), let's assume an initial guess
% of x = 100 and a learning rate of 0.01
% Since the original function is y = 3*x^2 - 2*x + 5, then:
% dy/dx = 6*x – 2
% Therefore:
alpha = 0.4;
x = 100;
x_all = [];
n_iterations = 500; % let’s say we want to iterate for 500 steps
% Performing x = x – alpha*dy/dx for 500 iterations
for i = 1:n_iterations
    x = x - alpha*(6*x - 2);
    x_all = [x_all, x];
end
% Plotting the original function
n = -100:0.001:100;
y = 3*n.^2 - 2*n + 5;
figure; hold on
plot(n, y, 'b')
% Now, plotting the solutions estimated by GD
y_sol = 3*x_all.^2 - 2*x_all + 5;
plot(x_all, y_sol, '-or')
% fyi: in the last line, “-” adds the line, “o” adds the round markers, and “r” makes it red %
