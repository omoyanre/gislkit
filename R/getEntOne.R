getEntOne <- function(x, bin=6, so=3){
  n <- length(x)
  #if(length(y) != n){stop("legnth of two vectors are different!")}
  if(so >= bin){stop("spline order must be less than bin")}
  
    out <- .C("EntOne", x = as.double(x), n=as.integer(n), bin=as.integer(bin), so = as.integer(so), eOut = 0)
    
  e <- out$eOut
  return (e)
  
}
