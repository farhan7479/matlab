% Newton-Raphson Method

% Define the function and its derivative
func = @(x) x^3 - 6*x^2 + 11*x - 6;
derivative = @(x) 3*x^2 - 12*x + 11;

% Initial guess
x0 = 2;

% Tolerance and maximum number of iterations
tolerance = 1e-6;
max_iterations = 100;

% Initialize iteration counter and initial guess
x = x0;
iteration = 0;

% Newton-Raphson iteration
while iteration < max_iterations
    f_x = func(x);
    f_prime_x = derivative(x);
    
    % Check for convergence based on tolerance
    if abs(f_x) < tolerance
        fprintf('Approximate root: %.6f\n', x);
        break;
    end
    
    % Update x using Newton-Raphson formula
    x = x - f_x / f_prime_x;
    
    iteration = iteration + 1;
end

if iteration >= max_iterations
    error('Method did not converge within maximum iterations.');
end
