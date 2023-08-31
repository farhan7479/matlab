% Runge-Kutta 2nd Order (RK2) Method without Storing Intermediate Values

% Define the ODE dy/dx = f(x, y)
f = @(x, y) x - y;

% Initial conditions
x0 = 0;
y0 = 1;

% Step size
h = 0.1;

% Number of steps
num_steps = 10;

% RK2 iteration
x = x0;
y = y0;
for i = 1:num_steps
    k1 = h * f(x, y);
    k2 = h * f(x + h, y + k1);
    y = y + 0.5 * (k1 + k2);
    x = x + h;
end

% Display result
fprintf('RK2 Method: Approximate y at x = %.2f is %.6f\n', x, y);
