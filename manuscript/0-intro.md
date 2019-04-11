---
output:
  pdf_document: default
  html_document: default
---
![](images/cover.png)  

\pagebreak

Página intencionalmente deixada em branco.

\pagebreak


\begin{center}

\textbf{Ciência de dados}  

\vspace{5cm}

Filosofia e aplicações com software  

\vspace{5cm}

Felipe Coelho Argolo  
felipe.c.argolo@protonmail.com  

\vspace{2cm}

São Paulo, 10 de Fevereiro de 2019  

\href{http://www.leanpub.com/fargolo}{Página oficial: https://http://www.leanpub.com/fargolo}  

\vspace{2cm}

**Volume 1** - Capítulos 0-5
Volume 2 (não publicado) - Capítulos 6-8 

\end{center}

\pagebreak


Para comentários, críticas, sugestões, ou simplesmente mandar um *oi*, entre em contato através do e-mail: felipe.c.argolo@protonmail.com.  

\pagebreak

## Prefácio

*Remember that all models are wrong; the practical question is how wrong do they have to be to not be useful*  
*George Box & Norman R. Draper, Empirical Model-Building and Response Surfaces* 

Uma antiga aplicação da matemática é estimar quantidades em cenários desconhecidos usando observações anteriores. Os babilônios usavam interpolação linear para estimar informações: fazendo o censo populacional com intervalo (e.g. 4 em 4 anos), estimavam o valor dos anos não medidos, supondo que eles eram quantidades centrais em relação aos vizinhos.  
Métodos iterativos também foram usados para aproximar a raiz quadrada de números naturais ($\sqrt{2}$) e números irracionais $(\pi)$.  
  
Essas técnicas deram fruto a abstrações mais gerais, aos campos da estatística e dos métodos numéricos. Em particular, o último século (XX) contou com a invenção do computador universal e dos processadores eletrônicos, impulsionando o poder de cálculos vertiginosamente.  

O aperfeiçoamento teórico e instrumental trouxe ferramentas mais adequadas para cientistas e também algoritmos mais potentes para aplicações práticas.  
Nos últimos anos, o campo ganhou forte notoriedade social e acadêmica em virtude dos resultados inéditos em problemas de predição com aplicação prática. Avanços em processamento de linguagem natural, visão computacional e algoritmos preditivos foram rapidamentes aplicados pela indústria e por pesquisadores.  

Uma descrição abrangente pode facilmente alcançar 1,000 páginas de texto sucinto, como o clássico ‘Deep Learning (Adaptive Computation and Machine Learning)’ de Goodfellow, Bengio and Courville. Outra obra de escopo e tamanho semelhante é a “Neural networks and learning machines”, de Simon Haykin. Inúmeros cursos online e videoaulas são produzidos por instituições de prestígio (e.g. Curso integral da Oxford em Deep Learning: https://www.youtube.com/watch?v=PlhFWT7vAEw ).  



## Objetivos

Apesar da popularização da área e do enorme conteúdo disponível, ainda predominam duas características: *(1)* a formulação matemática é usada de forma intimidadora para credibilizar exposições; *(2)* os procedimentos e conclusões são executados ignorando premissas filosóficas.

Este texto percorre temas em diferentes profundidades. Os tópicos são escolhidos de maneira a amparar o estudo progressivo de estruturas matemáticas e preceitos epistemológicos em aprendizagem estatística (ciência de dados/machine learning).  
Um guia para aplicação destas ferramentas para aqueles trabalhando na fronteira entre matemática aplicada e ciências naturais.   

São exemplos de campos que fazem uso extenso das ferramentas descritas: neurociências (e.g. modelos lineares para sinal BOLD em *fmri*), psicometria (e.g. análise fatorial), ecologia, biologia molecular (e.g. testes estatísticos), ciências clínicas (e.g. meta-análises e inferência causal), economia (e.g. algo trading, modelos de mercado), marketing (e.g. mecanismos de recomendação).  

O primeiro capítulo ilustra como o racional hipotético-dedutivo funciona para estudar teorias científicas. Aborda a relação entre ciências empíricas, o teorema do limite central, a distribuição normal e a distribuição *t*. O teste *t* de Student é aplicado para comparação de uma medida entre amostras.  

O segundo capítulo amplia a perspectiva de comparações e testes. Entendemos o papel de descrever relações com os conceitos de tamanho de efeito (D de Cohen) e correlações lineares ($\rho$ de Pearson). Também são introduzidas alternativas não-paramétricas aos procedimentos ($\rho$ de Spearman e teste U de Mann-Whitney). Usando o gancho das relações lineares, vemos o conceito de regressão para fazer predições. Um framework 'frequencista' e linguagem R são usados para demonstrações de exemplos e exercícios. 

O terceiro capítulo introduz o uso de muitas variáveis (análise multivariada). Grafos são a abstração base para relacionarmos múltiplos conceitos. Estudaremos regressão linear múltipla, colinearidade, mediação e moderação. Conheceremos análise fatorial e sua generalização em equações estruturais: a implementação matemática do abrangente paradigma filosófico para modelos causais de Judea Pearl.  

O quarto capítulo introduz redes neurais. Começamos da inspiração biológica envolvida nas primeiras abstrações concebidas para um neurônio artificial. Conheceremos a primeiram máquina inteligente da história: Mark I Perceptron. Codificaremos um Mark I virtual do zero (*from scratch*) e observaremos a aprendizagem. Entenderemos o algoritmo de Gradient Descent, usando derivativas para encontrar mínimos na função de erro.  

Redes Neurais expandem o poder de um neurônio com múltiplos nodos para a construção de sistemas preditivos complexos. Redes profundas incluem camadas sucessivas, permitindo transformações em sequência para resolver classes mais gerais de problemas. Entenderemos como os neurônios podem propagar erros aos outros, otimizando gradientes em conjunto com o mecanismo de *backpropagation*. Também codificaremos uma rede neural *from scratch*, Mark II.  

O quinto capítulo apresenta um racional diferente para análise. Partindo do conceito de holismo epistemológico (W. van Quine), reabordamos alguns exemplos anteriores usando inferência bayesiana. Fazemos perguntas diferentes para obter outras informações sobre nossos dados. Usaremos R, Stan e um framework bayesiano para modelos simples e hierárquicos. Exploramos o poder das simulações através de Markov Chain Monte Carlo para obter estimativas difíceis de tratar analiticamente.  

\pagebreak

## Sumário

Capítulo 0 - Ferramentas : programação com estatística básica   

* Computadores
* R : Curso rápido
  * Instalação, R e Rstudio
  * Tipos
  * Operadores úteis: <- , %>%
  * Matrizes e dataframes
  * Gramática dos gráficos e ggplot
  * Funções
  * Vetores, loops e recursões: calculando a variância 

Capítulo 1 - Os pássaros de Darwin e o método hipotético dedutivo  

  * Pássaros em Galápagos
    * Distribuição normal
    * Ciência experimental e o Teorema do limite central
  * Método hipotético-dedutivo e Testes de hipótese
    * Valor p
    * Distribuição t de Student e teste t

Capítulo 2 - Sobre a natureza das relações

  * Prelúdio: Quem precisa do valor p?
  * Tamanho de efeito: D de Cohen
  * Correlações lineares
    * Coeficiente de correlação $\rho$ de Pearson
    * Predições com regressão linear
  * Correlações e testes não paramétricos
    * $\rho$ de Spearman
    * Teste U de Mann Whitney

Capítulo 3 - Análise multivariada, grafos e inferência causal 

  * Regressão múltipla
    * Colinearidade
  * Grafos e trajetórias causais
    * Mediação e moderação
    * Análise fatorial
    * Equações estruturais
    
Capítulo 4 - Neurônios

  * Regressão logística
  * Um neurônio artificial: O perceptron
    * História e implementação do zero : Mark I
  * Redes Neurais e Deep learning (múltiplas camadas)
  * Gradient Descent
  * Backpropagation

Capítulo 5 - Contexto e inferência Bayesiana  

  * Intuições sobre distribuições probabilísticas
  * Inferência Bayesiana para teste de diferenças e correlação linear
  * Flexibilidade Bayesiana
    * Usando priors
    * O estimador Markov Chain Monte Carlo

**Volume 2**  
Capítulo 6 - Programação probabilística para contextos gerais  

  * Processos Gaussianos
  * Inferência Bayesiana para cosmologia
  * Redes neurais probabilísticas com PyMC3

Capítulo 7 - Ambientes desconhecidos  

  * Aprendizagem não supervisionada
  * Redução de dimensões 
  * Clustering
  * Aprendizagem semi-supervisionada
  * Reinforcement learning
  
Capítulo 8 - Tópicos especiais  

  * Sistemas dinâmicos
  * Topologia (Topological Data Analysis)
  * Processamento de linguagem natural
  
\pagebreak

## Pré-requisitos

Para uma leitura fluida do texto, recomenda-se a compreensão de rudimentos em probabilidade, estatística e cálculo (análise real). Os exemplos com ferramentas computacionais (exceto gráficos) usam sintaxe semelhante à matemática apresentada no texto. Assim, baixa familiaridade com linguagens de programação não é uma barreira. 

Todos os exemplos podem ser reproduzidos usando software livre.

### Leitura recomendada:

Neurociências  

* Principles of neural science - Eric Kandel

Matemática pura e programação  

* Better Explained ( https://betterexplained.com/ )
* What is mathematics - Courant & Robbins
* Fundamentos da matemática elementar - Iezzi (Vol. 5)
* MOOCs sobre estatística básica usando R (e.g.: https://www.coursera.org/specializations/statistics)
* Cálculo Diferencial e Integral - Piskounov =)
* http://material.curso-r.com/
* R Graphics Cookbook
* R Inferno
* Learn you a Haskell for Great Good
* Layered Grammar of Graphic - Hadley Wickham.
* The art of computer programming
* Algorithms unlocked
* Portais: statsexchange, stackoverflow, mathexchange, cross-validated.
 
Machine Learning  

* An Introduction to Statistical Learning: with Applications in R
* Neural Networks and Learning Machines - Simon Haykin
* Stanford course on computer vision: http://cs231n.stanford.edu/
* Deep learning at Oxford 2015: (https://www.youtube.com/watch?v=dV80NAlEins&list=PLE6Wd9FR--EfW8dtjAuPoTuPcqmOV53Fu) 

Filosofia

* A lógica da pesquisa científica - K. Popper
* A estrutura das revoluções científicas - Thomas Kuhn
* Contra o Método - Paul Feyerabend
* Dois dogmas do empiricismo - Willard van Quine

\pagebreak
