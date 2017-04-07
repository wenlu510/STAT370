rmytnorm <- function(n,mean = 0,sd = 1){
  # Samples the normal distribution until n positive numbers are returned
  # Arguments:
  #  - n - number of samples 
  #  - mean - mean
  #  - sd - standard deviation
  if(typeof(n)!="double"){
    stop("n should be an integer")
  }
  vec = c()
  while(length(vec)<n){
    c = rnorm(1,mean,sd)
    if(c > 0){
      vec = c(c,vec)
    }
  }
  return(vec)
}

dmytnorm <- Vectorize(function(x, mean = 0, sd = 1, lo = F){
  # Returns the density value for x and zero if x is negative
  # Arguments:
  #  - n - number of samples 
  #  - mean - mean
  #  - sd - standard deviation
  c = 0 # result
  k = dnorm(x = x,mean,sd, log = lo) 
  if(x > 0){
    c = k*2 # rescale so that the area under the curve is zero.
  }
  
  return(c)
},c("x"))

res = rmytnorm(1000,mean = 10,sd = 12)
head(res)
hist(res, breaks = 50)
res1 = dmytnorm(-10:10,mean = 5, sd = 7)
res1
plot(-10:10,res1)
#area under the curve
integrate(dmytnorm,upper = 10, lower = -10)

