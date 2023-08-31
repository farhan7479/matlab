% Bisection Method

% Define the function for which you want to find the root
f = @(x) x.^2 - 4;  % Use element-wise power

% Define the interval [a, b] where the root is expected to lie
a = 1;
b = 3;

% Tolerance for stopping criterion
tolerance = 1e-6;

% Maximum number of iterations
max_iterations = 100;

% Initialize arrays to store iteration values for plotting
iteration_nums = [];
root_approximations = [];

% Bisection iteration
for i = 1:max_iterations
    c = (a + b) / 2;
    fc = f(c);
    
    iteration_nums = [iteration_nums, i];  % Store iteration number
    root_approximations = [root_approximations, c];  % Store root approximation
    
    if abs(fc) < tolerance
        fprintf('Approximate root: %.6f\n', c);
        break;
    end
    
    if sign(fc) == sign(f(a))
        a = c;
    else
        b = c;
    end
end

if i == max_iterations
    disp('Method did not converge within maximum iterations.');
end

% Plot the function and root approximation
x_values = linspace(a, b, 100);  % Generate x values for plotting
y_values = f(x_values);  % Calculate corresponding y values

figure;
plot(x_values, y_values, 'b-');  % Plot the function curve in blue
hold on;
scatter(root_approximations, zeros(size(root_approximations)), 'r', 'filled');  % Plot root approximations in red
hold off;

title('Bisection Method: Root Approximation and Function Plot');
xlabel('x');
ylabel('f(x)');
legend('Function', 'Root Approximations', 'Location', 'NorthWest');
grid on;

