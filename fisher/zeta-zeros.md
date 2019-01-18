# On the real part of non-trivial zeros of the zeta function: The fisher argument for the Riemann Hypothesis 
### The fisher argument for the Riemann Hypothesis"
*Felipe Coelho Argolo*$^{1}$  
Universidade Federal de São Paulo  
email: felipe.c.argolo @protonmail.com; @hotmail.com; @gmail.com  


## Abstract
*Abstract*: The zeta function is defined as the analytic continuation of the  Dirichlet series $\zeta(s)=\sum_{1}^{\infty}\frac{1}{n^{s}}$, defined for $Re(s) > 1$. Riemann hypothesized that besides the trivial zeros, located at the even negative integers of s$(\zeta(s);s=-2; n=1,2,3,4,...)$, all other zeros would be images of $s$, being $Re(s)=1/2$. Several attempts to prove this have been tried. We hereby present another argument susceptible for examination. The theorem is elaborated based on a physical analogy for the series. We show that each value of $Re(s)$ uniquely determines the second moment of the generating series for $\zeta(s)$. This moment determines rotation angles of an object. We show that $Re(s)=\frac{1}{2}$ provides the unique moment to grantee non-trivial zeros.  

  
*Keywords*: Riemann hypothesis, zeta function, non-trivial zeros, fisher argument; 


## Introduction

G. H. Hardy proved that infinitely many nontrivial zeros exist for $Re(s)=\frac{1}{2}$. The densisty of zeros on the critical line is at least 41% of all nontrivial zeros of $\zeta(s)$. Numerical calculations have verified the fist $10^13$. In this paper, we provide show that all non-trivial zeros of the zeta have $Re(s)=\frac{1}{2}$.  

## The fishing rod analogy

Consider the infinite series defined by $\zeta(s)$.  
$$\zeta(s)=\sum_{n= 1}^{\infty}\frac{1}{n^{s}}, Re(s)>1, Im(s)=0$$
This is the composite size length of infinite line segments, each of them smaller than the previous by $\frac{n^{s}}{(n+1)^{s}}$.  
A physical analogy could be drawn to that of an infinitely sectioned staff. As if we started with $l_{1}=\frac{1}{1^{1}}$ and added progressively smaller pieces $(l_{2}=\frac{1}{1^{s}}+\frac{1}{2^{s}}), (l_{3}=\frac{1}{1^{s}}+\frac{1}{2^{s}}+\frac{1}{3^{s}},l_{4}=...)$ to its end.  

The staff's length (tip) asymptotically approaches $\zeta(s)$  

Considering $Im(s)\neq 0$, one may introduce complex rotations on each of the segments. 

Consider the series $\zeta(s), Re(s)=2, Im(s)=0$.
The corresponding segmented object's length converges to:  
$$\zeta(2)=\sum_{n= 1}^{\infty}\frac{1}{n^{2}}$$  
$$=\frac{1}{1^{2}}+\frac{1}{2^{2}}+\frac{1}{3^{2}}+...$$
$$\zeta(2)=\frac{\pi^{2}}{6}$$  
The identity by Euler which solved the Basel problem.  
We shall now consider our series with imaginary numbers:  
$$\zeta(s)=\sum_{n= 1}^{\infty}\frac{1}{n^{s}}, Re(s)>1,Im(s)\neq 0$$  

Consider if the imaginary parte of the previous series, $\zeta(2)$, was  $Im(s)=\frac{\pi}{3}i$, then:  
$$\zeta(2 + \frac{pi}{3})=\sum_{n= 1}^{\infty}\frac{1}{n^{2+\frac{\pi}{3}i}}$$
$$=\sum_{n= 1}^{\infty}\frac{1}{n^{2}}*\frac{1}{n^{\frac{\pi}{3}i}}$$

By the definition, this is the dot product among vectors with lengths determined by the generating series $\zeta(2)$ and $\zeta(\frac{\pi}{3}i)$.  

$$\zeta(2 + \frac{\pi}{3}) = \vec{\zeta(2)} \cdot \vec{\zeta(\frac{\pi}{3}i)} = \mid \zeta(2)\mid \mid\zeta(\frac{\pi}{3}i)\mid cos(\theta) $$

The value of $$\zeta(a+bi)$$ converges to the dot product of vectors due to the sum $a+bi$ in the exponent turning the expression into a product of perpendicular vectors:  
$$\zeta(a+bi) = \sum_{1}^{\infty}\frac{1}{n^{a+bi}}$$
$$=\sum_{1}^{\infty}\frac{1}{n^{a}}\frac{1}{n^{bi}}$$
$\vec{\zeta(a)}$, superposing the real axis and magnitude $\sum_{1}^{\infty}\frac{1}{n^{a}}$, and perpendicular to $\vec{\zeta(bi)}$, superposing the imaginary axis with magnitude $\sum_{1}^{\infty}\frac{1}{n^{bi}}$.  

Through vector addition, the next segment form and angle $\theta$ with the continuation of the previous one. The fist segment crosses the origin with angle $\theta$ 

$$z = e^{\theta i} \rightarrow = cos(\theta) + sin(\theta)i$$
$z_{s_{n}}=z_{s_{n-1}}+z_{s_{n-2}}+...+z_{s_{1}}$ 


*The fisher rod analogy*: A fish rod has several mathematical similarities with our problem. Consider the idea of an endeless fish rod, whose infinitesimal moving parts eventually become small and thin as a line. Its final size is the number asymptotically approaching by adding smaller pieces according to the series previously presented.  

![Photo by Alan Bishop, December 3, 2015, Unsplash,East Sooke Park, Sooke, Canada](fishing-rod.jpg)

This peculiar fish rod has a spinner. When it is pulled towards the bottom, one may spin it and this will cause the rod to rotate periodically, perpendicular to the real axis.  

Consider the orbit formed by the last point in each segment in a spiral towards the orbit, the attractor. 

The vectorial decomposition of the spiral is $z_{s_{n}}=z_{s_{n-1}}+z_{s_{n-2}}+...+z_{s_{1}}$. 

When $\zeta(s)$ approaches 0, that the vectorial sum approaches the center of the real axis. This is equal to rotate the object enough to cancel its projection on the real axis. 
 
 
The first moment is $M_{1}$. If the $n_{th}$ line segment length is given by $\frac{1}{n^{s}}$, we evaluate the moment around the real axis by the sum the distances $M_{1} = \sum_{1}^{\infty}\frac{1}{n^{s}}$.  

Each rod is uniquely determined by its momentums. The second momentum is:
$M_{2} = \sum_{1}^{\infty}(\frac{1}{n^{s}})^{2}$. Each $Re(s)$ determines a family of rods. We hereby show that the scenario in which $Re(s)=\frac{1}{2}$ is the one containing non-trivial zeta zeros.  

### Non-trivial zeros

Assume the line along $Re(s)=\frac{1}{2}$ defines the atractor of an envelope defined by the orbits of $\zeta$ in the critical strip $0<s<1$ as a function of $s$. 
It follows that this spiral is the one in which rotations from the vectorial decompostion cancel. 

The second moment $M_{2}$(e.g: moment of inertia) of the spiral formed by $\zeta(s)$ is then given by the generating series $$\zeta(2s)=\sum_{1}^{\infty}\frac{1}{n^2s}$$.

The trivial orbits intersecting the real axis are the ones in which the second moment increases by an equal factor to its angle of rotation.

These are given by $\zeta(-2ks), k=1,2,4,...$, as a direct consequence of  
the trivial period for $\sin{(\frac{\pi s}{2})}$ in the analytic continuation.
$\zeta{(s)} = 2^s \pi^{s-1} \sin{\left(\frac{\pi s}{2}\right)} \Gamma{(1-s)} \zeta{(1-s)}$  

Although this is only definable for the analytic continuation, the intuition holds for the series. We could also show that multiplying $s$ by negative multiples of 2 is the same as:
$$s=-(a+bi) \rightarrow 2s=2k*-(a+bi)$$. 
$$\sum_{1}{\infty}\frac{1}{n^2a}*\frac{1}{n^2bi}$$

For $Re(s)>1$ it is easy to visualize that large dimensions of $Re(s)$ result in orbits with large segments which do not rotate enough to turn the opposite way. The analytical continuation project those orbits symmetrically, emerging with associated angles in the left quadrants. 

The operation changes the dot product by squaring both parts at each weigthed product of ortogonal parts. 
$$\vec{s'}^{2}=\vec{Re(s)}^2+\vec{Im(s)}^2$$
Hence, the mapping
$$f : \zeta(s) \rightarrow \zeta(2s), Re(s)<0, Im(s)=0$$.
preserves the angle $\theta$ with the center $\zeta(-2s)$ when the geodesics of the system have no null curvature.  

### Riemann Hypothesis

The next (non-trivial) zeros are supposed to be related to the $\zeta$ function when $Re(s)=\frac{1}{2}$ and several seemenly related identities have been shown. 

Excluding the trivial zeros, $\zeta(s)=0$ only when $0<s<1$. The envelope of spirals centered at the orbit $\zeta(\frac{1}{2}+bi)$ is called critical strip. 

The orbit $\zeta(\frac{1}{2}+bi)$ is the vectorial decomposition of the orbit, or the sum of rod segments.   
$$\sum_{1}^{\infty}\frac{1}{n^{(\frac{1}{2}+bi)}}$$  

How to find the adequate orbit? 
In order for extra zeros to happen in the orbit, the net vectorial sum projection on the real axis must be 0.

![Differences between harmonic series and natural logarithm (blue area) converge to Euler-Mascheroni constant, William Demchick (Kiwi128@Wikipedia)](Gamma-area.svg.png)


Consider $s$ along the interval $S = 0 < 1/2+bi < 1$. No rotation, $Im(s)=0$, is associated with the divergent series:
$$\frac{1}{\sqrt 1}+\frac{1}{\sqrt 2}+\frac{1}{\sqrt 3}+\frac{1}{\sqrt 4}+\frac{1}{\sqrt 5}+\frac{1}{\sqrt 6}+...$$
This is the sum of line segments with lenghts $\sum_{1}{\infty}\frac{1}{sqrt{n}}$.
And the analytic continuation of $\zeta$, which would reflect the first moment related to the real axis:
$$\zeta(1/2)=-(\sqrt{2}+1)\sqrt{\frac{2}{\pi}}
\int_0^\infty\frac{\sqrt{x}\ \text{d}x}{\text{cosh}^2\ x}$$
$$\sim-1.46035450880958$$

The second moment of the line segments is: 
$$M_{2}=\sum_{1}^{\infty}\frac{1}{{n^{\frac{1}{2}}}}^{2}$$
$$=\sum_{1}{\infty}\frac{1}{n}$$
Therefore, the $M_{2}$ associated with 0 rotation is that of is the diverging harmonic series. Its truncation (harmonic number) can be expressed analytically as:

$$H = \gamma + \psi(n+1)$$ 
where $\gamma$ is the Euler-Mascheroni constant and $\psi(x)$ is the logarithmic derivative of the gamma function. 
$$\frac{d}{ds}ln{\Gamma(s)}$$

$\gamma$ is the pole of first order, its principal value exists and is equal to the Euler–Mascheroni constant, the limit of $-ln n + \sum_{k=1}^{n}1/k$ as $n$ increases to infinity.

Therefore, $M_{2} \sim H = \gamma + \psi(n+1)$

The digamma is the derivative logarithmic of the gamma function. Considering products of successive rotations, the gamma function continues the factorials to real and complex numbers. 
The digamma,

$$\frac{d}{ds}ln{\Gamma(s)}=\frac{\Gamma(s)'}{\Gamma(s)}$$

![](digamma.png)


This shows that $$M_{2}$$ can be approximated by a linear combination of a constant $(\gamma)$ and

Each value of $s$ determine unique moments for the line segments. 
Considering the dot products,

For the atractor of an orbit to be centered at zero, the second moment totally compensate the rotation by vectorial sums.
$$M_{2}(s)=\sum_{1}^{\infty} \frac{1}{{n^{\frac{1}{2}}}}^{2}$$

components must be co-periodic. The line segments should decrease their size  
*First moment* The second moment must increase periodically at a spefic rate. 

Consider the 


$$\zeta(s)=\sum_{1}{\infty}\frac{1}{n^s}$$
$$\zeta(2s)=\sum_{1}^{\infty}\frac{1}{n^2s}$$.

$\zeta(0) = \frac{-1}{2}$.


For
@ s > 1 
@ 0<Re(s)>1
@ s < 

The non-trivial zeros. The $Im(s)=$ Consider that a hypothetical fish rod is being pull.

G. H. Hardy, “Sur les zéros de la function ζ(s) de Riemann,” C. R. Acad. Sci. Paris, 158, 1012–1014 (1914).
H. M. Bui, B. Conrey, and M. P. Young, “More than 41% of the zeros of the zeta function are on the critical line,” Acta Arith., 150,
35–64 (2011).
X. Gourdon, “The 1013 first zeros of the Riemann zeta function and zeros computation at very large height,” http:// num-
bers.computation.free.fr (2004).
A. LaurincikasD. Siauciunas. On Zeros of Periodic Zeta Functions. Ukrainian Mathematical Journal. November 2013, Volume 65, Issue 6, pp 953–958
Gourdon, Xavier (2004), The 1013 first zeros of the Riemann Zeta function, and zeros computation at very large height.
The Cycle Problem:An Intriguing Periodicity to the Zeros of the Riemann Zeta Function. David D. Baughdbaugh@rice.edu.https://arxiv.org/pdf/0712.0934.pdf