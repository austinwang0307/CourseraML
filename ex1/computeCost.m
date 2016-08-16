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

h =  X * theta;
% h = {multiply X and theta, in the proper order that the inner dimensions match}
% X is size (m x n) and theta is size (n x 1)

error = h - y;
% error = {the difference between h and y}

error_sqr = error.^2;

J = 1/(2*m) * sum(error_sqr);
% J = {multiply 1/(2*m) times the sum of the error_sqr vector}


% =========================================================================

end
