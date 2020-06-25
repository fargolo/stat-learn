using Distributions
rnd_dist = Normal(0,1)
samples = rand(rnd_dist,10^5)

function mgauss(x)
	0.4*exp((-1)*(x^2)/2)
end

plot(layer(x=samples, Geom.density, color=["auto"]))
