#'hw_linear_regression
#
#'Get the linear regression paramter
#'
#'@param X predictors values
#'@param Y response values
#'
#'return the least squares estimates in matrix notation
#'
#'@examples
#'linear_regression(X = matrix(rnorm(3*100), nrow = 100, ncol = 3), Y = matrix(rnorm(1*100), nrow = 100, ncol = 1))
#'
#' @export
#'


linear_regression = function (X, Y) {
  X = cbind(rep(1, nrow(X)), X)
  return(solve(t(X) %*% X) %*% t(X) %*% Y)
}
