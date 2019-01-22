library("3plot3D")

kappa <- function(c,theta) {
  y <- (2+theta)/c(1+theta^2)^(3/2)
  return(y)}

reals <- seq(-1,1,length.out = 300)
thetas <- seq(-pi,pi,length.out = 300)
curvs <- kappa(c=reals,theta=thetas)
for(i in 1:1000){
  scatter3D(x = reals,
            y = thetas,
            z=curvs)
  Sys.sleep(0.1)
}
