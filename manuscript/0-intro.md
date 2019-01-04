![](images/0-intro-cover.png)  

# Ciência de dados: Filosofia e aplicações.

<div style="text-align: right"> Felipe Coelho Argolo </div>

\pagebreak

Página intencionalmente deixada em branco.

\pagebreak

Versão 0.31: Introdução; Capítulo 0; Capítulo 1; Capítulo 2; Capítulo 3 (em progresso).
31 de Dezembro de 2018

\pagebreak


## Prefácio

*Remember that all models are wrong; the practical question is how wrong do they have to be to not be useful*  
*George Box & Norman R. Draper, Empirical Model-Building and Response Surfaces* 

Uma antiga aplicação da matemática é fazer inferências com base em observações de cenários parecidos. Civilizações antigas, como os babilônios, usavam interpolação linear para estimar informações. Fazendo o censo populacional com intervalo de anos, estimavam o valor dos anos não medidos, supondo que eles eram medidas centrais daquelas ao seu redor. 
Métodos iterativos também foram usados para aproximar a raiz quadrada de números naturais ($\sqrt{2}$) e números irracionais $(\pi)$.  
  
Essas técnicas deram fruto a abstrações mais gerais, aos campos da estatística e dos métodos numéricos. Em particular, o último século (XX) contou com a invenção do computador universal e dos processadores eletrônicos, impulsionando o poder de cálculos vertiginosamente. 

O aperfeiçoamento teórico e instrumental trouxe ferramentas mais adequadas para cientistas e também algoritmos mais potentes para aplicações práticas.
   
Nos últimos anos, o campo ganhou forte notoriedade social e acadêmica em virtude dos resultados inéditos em problemas de predição com aplicação prática. Avanços em processamento de linguagem natural, visão computacional e algoritmos preditivos foram rapidamentes aplicados pela indústria e por pesquisadores.  

Uma descrição abrangente pode facilmente alcançar 1,000 páginas de texto sucinto, como o clássico ‘Deep Learning (Adaptive Computation and Machine Learning)’ de Goodfellow, Bengio and Courville. Outra obra de escopo e tamanho semelhante é a “Neural networks and learning machines”, de Simon Haykin.  

## Objetivos

Este texto oferece uma introdução intuitiva ao campo, contextualizando-o epistemologicamente. O campo de aprendizagem estatística tem definição pouco estabelecida. Abrange aspectos de matemática pura e aplicada. Com uma perspectiva mais geral, a matemática pura desenvolve abstrações básicas, descrevendo o comportamento de números, probabilidades, funções e outras entidades. Veremos que progressos fundamentais foram feitos por nomes como De Moivre, Euler e Gauss.   

Em matemática aplicada, especialistas estudam a relação dessas abstrações com fenômenos observáveis. Estas pessoas empregam métodos quantitativos a contextos restritos: por exemplo,  James Clerk Maxwell deduziu (1860) a distribuição estatística e velocidade de partículas em um gás ideal, conhecida como distribuição de Maxwell–Boltzmann. Em estatística, veremos a descoberta da distribuição t para as estimativas de uma média por Wlliam Gosset.  

São exemplos de campos que fazem uso extenso das ferramentas descritas: neurociências (modelos lineares em fmri), psicometria (análise fatorial), ecologia, biologia molecular (testes estatísticos), ciências clínicas (meta-análises e inferência causal), economia, marketing, algotrading.  

Este texto introduz e fornece um guia para aplicações práticas destas ferramentas a fenômenos observáveis. É destinados aos profissionais e pesquisadores trabalhando na fronteira entre matemática aplicada e ciências naturais.   

O primeiro capítulo ilustra como o racional hipotético-dedutivo funciona para estudar teorias científicas. Aborda a relação entre ciências empíricas e três abstrações matemáticas: a distribuição normal, a distribuição t e o teorema do limite central. O teste t de Student é aplicado para comparação de medidas em amostras.  
O segundo capítulo amplia a perspectiva de comparações e testes. Entendemos o papel de descrever relações com os conceitos de tamanho de efeito (D de Cohen) e correlações lineares ($\rho$ de Pearson). Também são introduzidas alternativas não-paramétricas aos procedimentos ($\rho$ de Spearman e teste U de Mann-Whitney). Usando o gancho das relações lineares, vemos o conceito de regressão para fazer predições. Um framework 'frequencista' e linguagem R são usados para demonstrações de exemplos e exercícios.  

O terceiro capítulo expande o modelo de regressão linear simples (entre duas variáveis) com regressão múltipla, seguindo com um classificador linear mais geral (Support Vector Machine). Redes Neurais ilustram o uso de grafos/redes para a construção de sistemas preditivos mais complexos. Modelos são construídos do zero *(from scratch)* para ilustrar dois mecanismos importantes de otimização *(gradient descent e back propagation)*.   

O quarto capítulo apresenta um racional diferente para análise. Partindo do conceito de holismo epistemológico (van Quine), reproduzimos as análises anteriores usando inferência bayesiana. Fazemos perguntas diferentes para obter informações mais ricas de nossos dados. Usamos R, Stan e um framework bayesiano para modelos simples e hierárquicos. Exploramos o poder das simulações através de Markov Chain Monte Carlo para obter estimativas difíceis de tratar analiticamente.  

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

  * Teorema do limite central e Distribuição normal
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

**Em construção:**
Capítulo 3 - Modelos preditivos complexos

  * Regressão múltipla
  * Classificador linear e Support Vector Machines
  * Gradient Descent
  * Redes e grafos
  * Redes Neurais
    * Backpropagation
    * Deep learning (múltiplas camadas)

**Em construção:**
Capítulo 4 - Contexto e inferência Bayesiana  

  * Intuições sobre distribuições probabilísticas
  * Inferência Bayesiana para teste de diferenças e correlação linear
  * O número de Euler
  * Regressão logística
  * Modelos hierárquicos
  * Flexibilidade Bayesiana
    * Usando priors
    * O estimador Markov Chain Monte Carlo

**Em construção:**
Capítulo 5 - Programação probabilística para contextos gerais  

  * Inferência Bayesiana para cosmologia
  * Prevendo halos de matéria escura (Kaggle top solution)
  * Redes neurais probabilísticas com PyMC3

Capítulo 6 - Ambientes desconhecidos  

  * Aprendizagem não supervisionada
  * Redução de dimensões 
  * Clustering
  * Aprendizagem semi-supervisionada
  * Reinforcement learning

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
