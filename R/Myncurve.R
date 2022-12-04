#' My n Curve
#'
#' @param mu mean
#' @param sigma standard deviation
#'
#' @return A graph and area value
#' @export
#'
#' @examples
myncurve = function(mu, sigma, a){
  curve(dnorm(x, mean=mu, sd=sigma), xlim = c(-10, a))
  xcurve = seq(-10,a, length=1000)
  ycurve = dnorm(xcurve, mean=mu, sd=sigma)
  polygon(c(-10,xcurve,a),c(0,ycurve,0),col="Grey")
  prob=pnorm(a,mean=mu,sd=sigma)
  prob=round(prob,4)
  paste0("Area = ", prob)

}
