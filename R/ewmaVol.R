ewmaVol <- function(rets, lambda) {
  sig.p <- 0
  sig.s <- vapply(rets, function(r) sig.p <<- sig.p*lambda + (r^2)*(1 - lambda), 0)
  return(sqrt(sig.s))
}
