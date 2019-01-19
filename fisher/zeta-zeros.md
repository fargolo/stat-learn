# On the unicity and location of orbits related to the non-trivial zeros of the zeta function: outlining a proof for the Riemann Hypothesis based on proba. 
listic axiomatization 
### Probabilistic analysis of orbits in a rigid fisher rod under the effect of attractors"
*Felipe Coelho Argolo*$^{1}$  
Universidade Federal de São Paulo  
email: felipe.c.argolo @protonmail.com; @hotmail.com; @gmail.com  


## Abstract
*Abstract*: The zeta function is defined as the analytic continuation of the  Dirichlet series $\zeta(s)=\sum_{1}^{\infty}\frac{1}{n^{s}}$, defined for $Re(s) > 1$. Riemann hypothesized that besides the trivial zeros, located at the even negative integers of s$(\zeta(s);s=-2; n=1,2,3,4,...)$, all other zeros would be images of $s$, being $Re(s)=1/2$. Several identities have being discovered on the effort of proving this hypothesis. We outline a proof based on quasiprobabilty functions defined after the $C^0$ complex space and 0 Cliford Algebra. 

First, we define the physics of a thought experiment based on previous theorems. Kolmogorov axioms and previous identites are used to prove that $Re(s)$ uniquely determines an orbit with an attractor. Non-trivial zeros are related to the envelope formed by the spiral along the critical strip $(0<Re(s)<1)$.  
We use moments defined after quasiprobability functions to prove uniqueness of orbits according to $Re(s)$. We provide the location location of the attractor governing the orbit along the critical line, $Re(s)$, showing all non-trivial zeros are related to an orbit by its second moment. This orbit is given by $Re(s)=\frac{1}{2} \rightarrow s = 1/2 + Im(s)$.

*Keywords*: Riemann hypothesis, zeta function, non-trivial zeros; 



## Introduction


The zeta function may be formally defined as the analytic continuation of the Dirichlet series $\zeta(s)=\sum_{1}^{\infty}\frac{1}{n^{s}}$, which exists for $Re(s) > 1$.  
Riemann hypothesized that besides the trivial zeros, located at the even negative integers of s$(\zeta(-2n);n=1,2,3,4,..., n \geq 1)$, all other zeros would be images of $s$, being $Re(s)=1/2$. Several identities have being discovered on the effort of proving this hypothesis. We outline a proof based on probabilistic axiomatization.

G. H. Hardy proved that infinitely many nontrivial zeros exist for $Re(s)=\frac{1}{2}$. The densisty of zeros on the critical line is at least 41% of all nontrivial zeros of $\zeta(s)$. Numerical calculations have verified the fist $10^{13}$.$^{1,2,3}$   


## Assumptions

We outline a proof based on quasiprobability functions in the $C^0$ complex vector space and its nondegenerate quadradic form (Clifford algebra $Cl_{C}=0$). 

Quasiprobability functions behave as probability functions, although Kolmogorov axioms I and III are relaxed, allowing for negative probabilities. Therefore, $\sigma$-additivity might be also violated for subsets of events $E_{i}$, when $$P(\cup{E_{i}})<0$$.  

Consider the length of a line segment composed by summing infinite line segments, each of them smaller than the previous.

Consider the infinite series defined by $\zeta(s)$ for $Re(s)>1$.  
$$\zeta(s)=\sum_{n= 1}^{\infty}\frac{1}{n^{s}}, Re(s)>1, Im(s)=0$$
This is the composite size length of infinite line segments (or vectors), each of them smaller than the previous by a ratio of $\frac{\frac{1}{(n+1)^{s}}}{\frac{1}{n^{s}}}= \frac{n^{s}}{(n+1)^{s}}$.  

A physical analogy could be drawn to that of an infinitely sectioned fish rod. As if we started with $l_{1}=\frac{1}{1^{s}}$ and added progressively smaller pieces $(l_{2}=\frac{1}{1^{s}}+\frac{1}{2^{s}}), (l_{3}=\frac{1}{1^{s}}+\frac{1}{2^{s}}+\frac{1}{3^{s}},l_{4}=...)$ to its end.  

The total length asymptotically approaches $\zeta(s)$. 

Notice that $\zeta(s)$ geometrically describes a related spiral, obtained with the $n$ sucessive cross products $Re(s) \times Im(s)$ for $\lim_{n\rightarrow\infty}$. $Re(s)$ is a real number and $Re(s)$ lies in the complex space.  

## Quasiprobability function

### Intuition

Consider the scneraio of the infinitely sectioned fish rod described above being bent, by being pulled ortogonally to a given attractor. Whe the total segment is deformed, each line forms the same angle $\theta$ with the next one according to the cross product described above.
 
![Photo by Alan Bishop, December 3, 2015, Unsplash,East Sooke Park, Sooke, Canada](fishing-rod.jpg)

Consider the orbit formed by the last point in each segment in a spiral towards the attractor. 

The vectorial decomposition of the spiral is $z_{s_{n}}=z_{s_{n-1}}+z_{s_{n-2}}+...+z_{s_{1}}$. 

### Events

Consider each orbit as an event. We define the probability of $s$ the value $\zeta(s)$ according to the analytic continuation:
$$\zeta{(s)} = 2^s \pi^{s-1} \sin{\left(\frac{\pi s}{2}\right)} \Gamma{(1-s)} \zeta{(1-s)}$$  
The probability associated with an event E is $E(Re(\zeta(s)))$ which is the projection of $\zeta(s)$ over the real axis. This quantity is different, but related to $Re(s)$.  

Ploting the vectors converging to the spiral is the same as  $z_{s_{n}}=z_{s_{n-1}}+z_{s_{n-2}}+...+z_{s_{1}}$.  

This spiral can be seen as the orbit $S$ spiraling outside of the attractor with scape velocity $\vec{v}$ given by the Hamiltonian of the system and its respective conjugate momentum. For circular polar coordinates, the angular momentum.  

If the $n_{th}$ line segment length is given by $\frac{1}{n^{s}}$, we evaluate the first moment $M_{1}$ relative to the real axis by the sum $M_{1} = \sum_{1}^{\infty}\frac{1}{n^{Re(s)}}$.

The real vectors have a total length that equals to the first moment, $M_{1}$, $L = M_{1} = \zeta(Re(s))$.  

Also, consider the second moment (angular momentum), $M_{2}$, given by squaring the length of each line segment $M_{2}=\sum_{i}^{\infty}Re(s_{i})^2$

Each orbit is defined by the cross products of progressively smaller vectors rotated by the same angle with a smaller magnitude.  

#### Uniqueness of orbits

Considering the scape velocity scenario previously described, the angle spiraled out of the attractor is the one associated with the angular momentum:  
1.  Each real value of $Re(s)$ results in a different value of $M_{1}$, given by $\zeta(Re(s))$.  
2.  The second moment then converges to:$\lim_{n \rightarrow \infty} M_{2} = \sum_{n=1}^{}(\frac{1}{n^{Re(s)}})^{2} = \zeta(2Re(s))$.  
The first and the second moment determine a unique ratio for each pair $\zeta(2Re(s))$ and $\zeta(Re(s))$. Every $Re(s)$ determines a unique family of orbits. 

We hereby show that the scenario in which $Re(s)=\frac{1}{2}$ is the one containing non-trivial zeta zeros.   

### Non-trivial zeros of zeta

When $\zeta(s)$ approaches 0, the vectorial sum approaches the center of the real axis. This is equal to rotate the object enough to cancel its projection on the real axis. 

In that case, the spiral has its center on 0. The value $(Im(\zeta(s))$ as the projection of a vector $\vec{v_{s}}$ onto the imaginary axis.

The cross product $Re(\zeta(s)) \times Im(\zeta(s))$ defines the converging spiral. The related second moment is related to the scaping velocity by the length of the spiralad arch, which converges to $\zeta(s)$.  


#### Conditons for non-trivial zeros
The non-trivial zeros occur in the orbit in which the attractor associated with $Re(s)$ is at the spiral 

in which the second moment has non-trivial trivial periods.

The if $\vec{v_{s}}$ makes angle $\theta + \frac{\pi}{2}$ with the origin of the real axis, then $Im(\vec{v_{s}})$
  
The first moment is $M_{1}$. If the $n_{th}$ line segment length is given by $\frac{1}{n^{s}}$, we evaluate the moment around the real axis by the sum the distances $M_{1} = \sum_{1}^{\infty}\frac{1}{n^{s}}$.  


When $\zeta(s)$ approaches 0, that the vectorial sum approaches the center of the real axis. This is equal to rotate the object enough to cancel its projection on the real axis. 
 
The first moment is $M_{1}$. If the $n_{th}$ line segment length is given by $\frac{1}{n^{s}}$, we evaluate the moment around the real axis by the sum the distances $M_{1} = \sum_{1}^{\infty}\frac{1}{n^{s}}$.  



Consider the series $\zeta(s), Re(s)=2, Im(s)=0$.
The corresponding segmented object's length converges to:  
$$\zeta(2)=\sum_{n= 1}^{\infty}\frac{1}{n^{2}}$$  
$$=\frac{1}{1^{2}}+\frac{1}{2^{2}}+\frac{1}{3^{2}}+...$$
$$\zeta(2)=\frac{\pi^{2}}{6}$$  
The identity by Euler which solved the Basel problem.  

We shall now consider our series with imaginary numbers:  
$$\zeta(s)=\sum_{n= 1}^{\infty}\frac{1}{n^{s}}, Re(s)>1,Im(s)\neq 0$$  

Consider if the imaginary part of the previous series, $\zeta(2)$, was  $Im(s)=\frac{\pi}{3}i$, then:  
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

![Photo by Alan Bishop, December 3, 2015, Unsplash,East Sooke Park, Sooke, Canada](fishing-rod.jpg)


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
where $\gamma$ is the Euler-Mascheroni constant and $\psi(x)$ is the logarithmic derivative of the gamma function. The digamma,
$$\frac{d}{ds}ln{\Gamma(s)}$$
$$=\frac{\Gamma(s)'}{\Gamma(s)}$$

$\gamma$ is the pole of first order, its principal value exists and is equal to the Euler–Mascheroni constant, the limit of $-ln (n) + \sum_{k=1}^{n}1/k$ as $n$ increases to infinity.
Also,
$$\gamma = \int_{0}^{\infty} (-\frac{1}{x} + \frac{1}{floor(x)}) dx$$
And
$$\psi(s+1) = \psi(s)+\frac{1}{s}$$
$$=\frac{\Gamma(s)'}{\Gamma(s)}+\frac{1}{s}$$

Notice that the moment of inertia $M_{2}$ for large values of s given by:
$$M_{2} \sim H = \gamma + \psi(s+1)$$
Where $\gamma$ is limit of an integral and $\psi(s+1)=\psi(s)+\frac{1}{s}$ :
$$= \int_{0}^{s} (-\frac{1}{s} + \frac{1}{floor(s)}) ds + \frac{d}{ds}ln{\Gamma(s)} + 1/s$$
Taking the derivative of the second moment with respect to $s$
$$\frac{d}{ds} ln(x) = 1/x, \frac{d}{dx} x^{-1} =  \frac{-1}{x^2} \rightarrow$$
$$=  \frac{d}{ds}\int_{0}^{s}(-\frac{1}{s} + \frac{1}{floor(s)}) + \frac{d^2}{ds}ln{\Gamma(s)} + \frac{d}{ds}\frac{1}{s}$$
The second derivative of the $\Gamma$ function is the first derivative of $\psi(s)$. Its Laurent series at $s=0$ and $\infty$:
$$1/s^2+ \pi^2/6 + s\psi(s)''+\frac{\pi^2s^2}{30}+ O(s^3)$$
$$1/s + 1/2s^2 + 1/6x^3 - 1/30s^5 + O((1/x)^6)$$

For $s \sim 0$:
$$M_{2} \sim  (-\frac{1}{s} + \frac{1}{floor(s)}) + 1/s^2+ \pi^2/6 + s\psi(s)''+\frac{\pi^2s^2}{30}+ O(s^3) - 1/s^2$$
$$= (-\frac{1}{s} + \frac{1}{floor(s)}) + \pi^2/6 + s\psi(s)''+\frac{\pi^2s^2}{30}+ O(s^3)$$
For $s \sim \infty$:
$$M_{2} \sim  (-\frac{1}{s} + \frac{1}{floor(s)}) + 1/s + 1/2s^2 + 1/6x^3 - 1/30s^5 + O((1/x)^6) - 1/s^2$$
$$ =  (-\frac{1}{s} + \frac{1}{floor(s)}) + 1/s + 1/6x^3 - 1/30s^5 + O((1/x)^6)$$

---  

$$= (-\frac{1}{s} + \frac{1}{floor(s)}) + \frac{d}{ds} \frac{1}{\Gamma(s)} - s^{-2}$$

$$= (-\frac{1}{s} + \frac{1}{floor(s)}) + \frac{d}{ds} \frac{1}{\Gamma(s)}  - s^{-2}$$


$$= \int_{0}^{s} (-\frac{1}{s} + \frac{1}{floor(s)}) dx + \psi(s) + \frac{1}{s}$$
The value is given by the logarithmic derivative of the gamma function until that moment $$psi(s)$$ added with s-1$\frac{1}{s}$

Hence, the moment is given 

The digamma is the derivative logarithmic of the gamma function. Considering products of successive rotations, the gamma function continues the factorials to real and complex numbers. 

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

The non-trivial zeros. The $Im(s)=$ Consider that a hypothetical fish rod is being pull.

1. G. H. Hardy, “Sur les zéros de la function ζ(s) de Riemann,” C. R. Acad. Sci. Paris, 158, 1012–1014 (1914).
2. H. M. Bui, B. Conrey, and M. P. Young, “More than 41% of the zeros of the zeta function are on the critical line,” Acta Arith., 150,
35–64 (2011).
3. X. Gourdon, “The $10^13$ first zeros of the Riemann zeta function and zeros computation at very large height,” http:// num-
bers.computation.free.fr (2004).
A. LaurincikasD. Siauciunas. On Zeros of Periodic Zeta Functions. Ukrainian Mathematical Journal. November 2013, Volume 65, Issue 6, pp 953–958
Gourdon, Xavier (2004), The 1013 first zeros of the Riemann Zeta function, and zeros computation at very large height.
The Cycle Problem:An Intriguing Periodicity to the Zeros of the Riemann Zeta Function. David D. Baughdbaugh@rice.edu.https://arxiv.org/pdf/0712.0934.pdf
 Dirac, P. A. M. (1942). "Bakerian Lecture. The Physical Interpretation of Quantum Mechanics". Proceedings of the Royal Society A: Mathematical, Physical and Engineering Sciences. 180 (980): 1–39. 