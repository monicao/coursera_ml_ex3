function [confidence, p] = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%


X = [ones(size(X, 1), 1) X]; % 5000 x 401

% Compute the hidden layer
% Theta1: 25 x 401
a2 = sigmoid(X * Theta1'); % 5000 x 25
a2 = [ones(size(a2, 1), 1) a2]; % 5000 x 26

% Compute the output layer
% Theta2: 10 x 26
a3 = sigmoid(a2 * Theta2');  % 5000 x 10

[confidence, p] = max(a3, [], 2);





% =========================================================================


end
