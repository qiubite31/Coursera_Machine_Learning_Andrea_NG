function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

%for c=1:K
%  c_idx = find(idx == c)
%  c_data = []
%  for i=c_idx
%    c_data = [c_data, X(i,1:end)]
%  endfor
%  centroid(c,:) = sum(c_data) / length(c_idx)
%endfor



for c = 1:K
    c_idx = idx==c;
    n_i = sum(c_idx);
    c_idx_matrix = repmat(c_idx,1,n);
    c_data = X .* c_idx_matrix;
    centroids(c,:) = sum(c_data) / n_i;
end





% =============================================================


end

