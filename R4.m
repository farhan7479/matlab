% Runge-Kutta 4th Order (RK4) Method without Storing Intermediate Values

% Define the ODE dy/dx = f(x, y)
f = @(x, y) x - y;

% Initial conditions
x0 = 0;
y0 = 1;

% Step size
h = 0.1;

% Number of steps
num_steps = 10;

% RK4 iteration
x = x0;
y = y0;
for i = 1:num_steps
    k1 = h * f(x, y);
    k2 = h * f(x + 0.5*h, y + 0.5*k1);
    k3 = h * f(x + 0.5*h, y + 0.5*k2);
    k4 = h * f(x + h, y + k3);
    y = y + (k1 + 2*k2 + 2*k3 + k4) / 6;
    x = x + h;
end

% Display result
fprintf('RK4 Method: Approximate y at x = %.2f is %.6f\n', x, y);
