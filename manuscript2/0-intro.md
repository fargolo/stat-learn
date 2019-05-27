---
output:
  pdf_document: default
  html_document: default
---
![](images/cover.png)  

\pagebreak

\begin{center}

\textbf{Ciência de dados}  

\vspace{5cm}

Curvas: funções elementares e series temporais  

\vspace{5cm}

Felipe Coelho Argolo  
felipe.c.argolo@protonmail.com  

\vspace{2cm}

São Paulo, 25 de Maio de 2019  

\href{http://www.leanpub.com/fargolo}{Página oficial: https://http://www.leanpub.com/fargolo}  

\vspace{2cm}

Volume 2

\end{center}

\pagebreak

## Prefácio  

*There is **timing** in everything. Timing in strategy cannot be mastered without a great deal of **practice**.*  
*Miyamoto Musashi, Go Rin No Sho (1645), Book of Earth, The Book of Five Rings*  
  
Os capítulos do primeiro volume (1-5) introduzem ferramentas comuns no repertório para análise de dados, assim como nortes em filosofia do conhecimento para aplicá-las.  
De maneira geral, lidamos apenas com relações lineares. Retas cuja inclinação é determinada por um coeficiente angular: coeficiente produto-momento de Pearson ($\rho$), regressão linear ($\beta$), perceptrons ($W$) ou redes neurais ($W_{i}$).   

No sexto capítulo, retomamos os níveis diários de testosterona usados para ilustrar relações não lineares quando apresentamos redes neurais. Veremos como é possível usar análises exploratórias, visulizações e intuições espaciais para escolher a modelagem adequada.  

Usando funções de transformação específicas, é possível atingir acurácias muito boas. Construiremos Mark III, uma rede elegante, com topologia e funções de ativação específica para resolver o problema dos atletas sob efeito de dopping.   

![](images/chap6-hormones.png)

Usaremos a interação entre efeitos polinomiais ($x^1, x^2 , x^3 , ... , x^n$) para obter curvas ótimas. Também falamos em exponenciais ($\beta^{x} , 2^x ,  e^{x}$) e logaritmos ($\text{log}(x) , \text{ln}(x)$).  

Em seguida, o sétimo capítulo examina outras intuições importantes para análise de séries temporais. Descreveremos o análogo a ritmos, através de regressão harmônica (Transformada de Fourier em $\text{sen}(x) , \text{cos}(x)$ e semelhantes). Também, o efeito cumulativo de fases anteriores (*momentum*) com média móvel e auto-regressão (ARIMA).  

O oitavo capítulo aborda volatilidade, incerteza e caos. Quantificamos amplitudes, precisão e exploramos modelos quasi-randômicos para séries temporais (*Processos Gaussianos*). Aprenderemos uma nova linguagem (Julia) para falar em caos e implementar expoentes de Lyapunov.   

\pagebreak  

## Summário 

**Volume 2**
Capítulo 6 - Curvas: funções elementares e series temporais  

  * O caso das drogas ergogênicas   
    * Regressão quadrática  
  * Interações e séries de Taylor  
    * Regressões de alta ordem  
  * Exponenciais e logaritmos 
  
Capítulo 7 - Ritmo  

  * Componentes periódicos e transformada de Fourier  
    * Regressão harmônica ($\text{sen}(x), \text{cos}(x)$)  
  * Recursividade e Momentum  
    * Auto-regressão  
    * Média móvel  
    * ARIMA   
    * Resíduos e regressão dinâmica   
    
Capítulo 8 - Caos

  * Volatilidade  
  * Processos Gaussianos  
  * Modelos hierárquicos  
  * Teoria do Caos
    * Expoentes de Lyapunov 
  
\pagebreak

## Pré-requisitos

Recomendo o [volume 1](https://leanpub.com/cienciadados), com textos (Caps. 0 ~ 5) introduzindo conceitos necessários (regressões, redes neurais e ferramentas como R e Stan).  

Todos os exemplos podem ser reproduzidos usando software livre.  

### Leitura recomendada:

Filosofia e divulgação científica

* Surely You're Joking, Mr. Feynman
* O mundo assombrado pelos demônios - Carl Sagan
* A lógica da pesquisa científica - K. Popper
* A estrutura das revoluções científicas - Thomas Kuhn
* Contra o Método - Paul Feyerabend
* Dois dogmas do empiricismo - Willard van Quine
* Stanford Encyclopedia of Philosophy - https://plato.stanford.edu/

Neurociências  

* Principles of neural science - Eric Kandel

Matemática/computação  

* Coleção '*Fundamentos da matemática elementar*'
* What is mathematics - Courant & Robbins
* Better Explained ( https://betterexplained.com/ )
* http://material.curso-r.com/
* R Graphics Cookbook
* R Inferno
* Learn you a Haskell for Great Good
* Layered Grammar of Graphics - Hadley Wickham.
* Algorithms unlocked
* Online: Statsexchange, stackoverflow, mathexchange, cross-validated.
 
Machine Learning  

* An Introduction to Statistical Learning: with Applications in R
* Neural Networks and Learning Machines - Simon Haykin
* Stanford (computer vision): http://cs231n.stanford.edu/
* Oxford 2015 (Deep learning): (https://www.youtube.com/watch?v=dV80NAlEins&list=PLE6Wd9FR--EfW8dtjAuPoTuPcqmOV53Fu) 

\pagebreak

**Agradecimentos**

Minha família, Suzana, Paulo, Isaac e Chris. Amigos Gabriel, Guilherme, Wei.  

Aos professores: Carla Daltro, Anibal Neto, Lucas Quarantini, Luis Correia, Rodrigo Bressan, Ary Gadelha.  

Aos colegas Fatori, Luccas, Macedo, Walter, Sato, André, Hiroshi, Lais, Luci, Davi, Oddone, Jones, n3k00n3 (Fernando), Loli (Lorena).

Para comentários, críticas, sugestões, ou simplesmente dizer *oi*: felipe.c.argolo@protonmail.com.  


\pagebreak
