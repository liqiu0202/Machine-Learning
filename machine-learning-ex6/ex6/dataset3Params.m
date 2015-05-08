function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
%
% Below is the code to get optimal C and sigma, after we get their values, we comment these code for accelerating computation
%C_candidate = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
%sigma_candidate = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
%error = 1e100;
%for i = 1:length(C_candidate)
%  for j = 1:length(sigma_candidate)
%     %x1, x2 are just placeholder vectors and will be substitute later
%     model= svmTrain(X, y, C_candidate(i), @(x1, x2) gaussianKernel(x1, x2, sigma_candidate(j) ));
%     predictions = svmPredict(model, Xval);
%     tmpError = mean(double(predictions ~= yval) );
%     if tmpError < error
%        C = C_candidate(i);
%        sigma = sigma_candidate(j);
%        error = tmpError;
%     endif;
%     printf("%d %d is completed", i, j);
%  endfor;
%endfor;


%printf("c: %f sigma:%f\n", C, sigma);


C = 1;  sigma = 0.1;



% =========================================================================

end
