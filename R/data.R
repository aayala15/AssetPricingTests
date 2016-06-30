#' Returns of 25 portfolios formed on size and book-to-market.
#'
#' A dataset containing monthly returns.
#'
#' @format A data frame with 1068 rows and 25 variables:
#' \describe{
#'   \item{s1b1}{return of the small / low book-to-market portfolio}
#'   ...
#'   \item{s5b5}{return of the large / high book-to-market portfolio}
#' }
#' @source \url{http://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html}
"port25sb"


#' Returns of Fama-French factors.
#'
#' A dataset containing monthly returns.
#'
#' @format A data frame with 1068 rows and 5 variables:
#' \describe{
#'   \item{mktrf}{excess return of the market}
#'   \item{size}{size factor}
#'   \item{hml}{book-to-market factor}
#'   \item{umd}{momentum factor}
#'   \item{rf}{one-month risk-free rate}
#' }
#' @source \url{http://mba.tuck.dartmouth.edu/pages/faculty/ken.french/data_library.html}
"ffFactors"