function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

%for i=1:m,
%  h = (theta(1)+theta(2)*X(i,2));
%  J = J + ( h - y(i) )^2;
%endfor
%J = J/(2*m);

H = X*theta;
T1 = (H - y) .^ 2;
T2 = sum(T1);
J = T2/(2*m);

% --- Vector version ---
% Elapsed time is 0.000631094 seconds.
% Elapsed time is 0.000144958 seconds.
%
% --- Std version ---
% Elapsed time is 0.00338197 seconds.
% Elapsed time is 0.0022378 seconds.

% =========================================================================

end
