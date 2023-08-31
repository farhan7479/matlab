% Regula Falsi (False Position) Method

% Define the function for which you want to find the root
func = @(x) x^3 - 6*x^2 + 11*x - 6;

% Interval endpoints
a = 1;
b = 20;

% Tolerance and maximum number of iterations
tolerance = 1e-6;
max_iterations = 100;

% Initialize function values at interval endpoints
fa = func(a);
fb = func(b);

% Check if the function has the same sign at both interval endpoints
if sign(fa) == sign(fb)
    error('Function has same sign at both interval endpoints.');
end

% Regula Falsi iteration
for i = 1:max_iterations
    c = (a * fb - b * fa) / (fb - fa);
    fc = func(c);
    
    % Check if the tolerance condition is met
    if abs(fc) < tolerance
        root = c;
        fprintf('Approximate root: %.6f\n', root);
        return;
    end
    
    % Update interval based on the sign of fc
    if sign(fc) == sign(fa)
        a = c;
        fa = fc;
    else
        b = c;
        fb = fc;
    end
end

error('Method did not converge within maximum iterations.');
