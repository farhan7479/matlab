% Bisection Method

% Define the function for which you want to find the root
f = @(x) x^2 - 4;

% Define the interval [a, b] where the root is expected to lie
a = 1;
b = 3;

% Tolerance for stopping criterion
tolerance = 1e-6;

% Maximum number of iterations
max_iterations = 100;

% Bisection iteration
for i = 1:max_iterations
    c = (a + b) / 2;
    fc = f(c);
    
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
