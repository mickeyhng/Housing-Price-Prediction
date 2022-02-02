function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       
##musize=mean(X(:,1));
##stdsize=std(X(:,1));
##muroom=mean(X(:,2));
##stdroom=std(X(:,2));
##mu(1)=musize;
##mu(2)=muroom;
##sigma(1)=stdsize;
##sigma(2)=stdroom;
for i=1:size(X,2)
  mu(i)=mean(X(:,i));
  sigma(i)=std(X(:,i));
  X_norm(:,i)=1/sigma(i).*(X(:,i).-mu(i));
  end





% ============================================================

end
