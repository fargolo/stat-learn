![O criador e a criatura: Frank Rosenblatt e Mark I.](images/chap3-frankmark.jpg)

# Capítulo 3 : Modelos preditivos complexos

Em março de 2016, o software AlphaGo tornou-se o primeiro programa de computador a vencer um mestre de Go. O feito é difícil por se tratar de um jogo quase impossível de ser totalmente computado.  
Inventado há mais de 2,500 anos, motivou bastante em pesquisa em matemática. Existem $2,08*10^{170}$ maneiras válidas de dispor as peças no tabuleiro. O chinês polímata chinês Shen Kuo (1031–1095) chegou a um resultado próximo $10^{172}$ séculos atrás. Vale lembrar que o número de átomos no universo observável é de módicos $10^{80}$.  

No capítulo anterior, aprendemos uma formulação básica de modelo preditivo, a regressão linear simples. A seguir, estenderemos nosso leque de ferramentas para novas classes de relações, também incluindo mais informações na entrada de nossos modelos.   

Mais do que isso, conheceremos a primeira máquina inteligente da história.  

![](images/chap3-go.jpg)

## O perceptron de Rosenblatt 

Frank Rosenblatt (1928 - 1971) nasceu e morreu em 11 de julho, mas esse não é o fato mais curioso da biografia deste psicólogo. Foi o responsável pelo desenvolvimento do primeiro neurônio artificial. Em suas palavras, o primeiro objeto não biológico a recriar uma organização do ambiente externo com significado.

*It can tell the difference between a cat and a dog, although it wouldn't be able to tell whether the dog was to the left or right of the cat. Right now it is of no practical use, Dr. Rosenblatt conceded, but he said that one day it might be useful to send one into outer space to take in impressions for us. - New Yorker, December, 1958*[^19]  

O aparato reproduzia o entendimento da época sobre o funcionamento de um neurônio. O corpo recebe sinais de dendritos e, após processamentos ocultos, produz um output na forma de sinal elétrico pelo axônio. A primeira matematização viria do modelo de McCulloch & Pitts ("A Logical Calculus of the Ideas Immanent in Nervous Activity", 1943).

![Diagrama de células lógicas em McCulloch & Pitts](images/chap3-diagram1.png)

Em 1949, Donald Hebb descreveu em seu clássico *The Organization of Behavior* um mecanismo plausível para a aprendizagem. Comumente expressa na máxima "Cells that fire together wire together" (células que disparam juntas, conectam-se entre si).  

Com o objetivo de criar uma máquina que pudesse processar inputs diretamente do ambiente físco (e.g. luz e som), Rosenblatt concebeu extensão elegante do modelo em 1957 ("The Perceptron[*do latim, percipio, compreender“*]--a perceiving and recognizing automaton. Report 85-460-1, Cornell Aeronautical Laboratory"). Composto de três partes: o sistema S (sensório); o sistema A (associação) e o sistema R (resposta).  
O neurônio "lógico" cru de McChulloch & Pitts foi modificado de maneira a processar inputs através de pesos antes da saída. A aprendizagem se dá pela modificação desses pesos. 

![Organização do Mark I, retirado de seu manual de uso original](images/chap3-perceptronscheme.png)  

Inicialmente, o perceptron foi simulado em um IBM 704 (também berço das linguagens FORTRAN e LISP). Em seguida, implementado como um dispositivo físico, batizado de Mark I Perceptron.[^20] Um estudo mais profundo foi publicado por ele em 1962 (Principles of neurodynamics)

[^19]: Ele consegue diferenciar um gato de um cachorro, ainda que não seja capaz de dizer se o cachorro estava à esquerda ou à direita do gato. No momento, não tem uso prático, Dr. Rosenblatt admitiu, porém disse que um dia pode ser útil para enviar um [aparato] ao espaço para capturar impressões para nós.  
[^20]: Mark I é um título comumente utilizado para a primeira versão de uma máquina.

\pagebreak 

Rosenblatt protagonizava calorosos debates sobre inteligência artificial na comunidade científica junto a Marvin Minsky, um amigo da adolescência. Em 1969, Minsky e um matemático (Seymour Papert) publicaram um livro centrado no Perceptron.
(Perceptrons: An Introduction to Computational Geometry). Nele, provaram que o neurônio artificial era incapaz de resolver problemas não-lineares do tipo XOR. Para um problema eXclusive OR (OU eXclusivo) o neurônio deve disparar diante do estímulo A ou do estímulo B, porém não diante de ambos.  

O impacto foi devastador sobre o otimismo vigente e se passou um período de 10 anos de baixíssima produção, conhecido como idade das trevas do conexionismo. A retomada dos neurônios artificiais aconteceu somente na década de 80. Infelizmente, Rosenblatt morreu prematuramente em 1972 num acidente de barco, não presenciando o renascimento dos perceptrons.  

Sabendo das origens do modelo, é curioso que a maioria dos cursos introduzam perceptrons do ponto de vista puramente matemático, apontando a semelhança com neurônios como mera curiosidade. Pelo contrário, a inspiração em neurônios biológicos e posterior sucesso nas tarefas designadas fala em favor de um fantástico caso de sucesso para engenharia reversa.  
A Natureza, através de evolução por seleção natural, é a verdadeira mãe desse algoritmo.  

![Neurônio biológico e seu correspondente artificial usando estrutura e notações atuais](images/chap3-neurons.png)  

\pagebreak
 
## Criando neurônios

Mark I foi criado para reconhecimento visual, podendo ser considerado avô da visão computacional.  
Possuía um campo de entrada fotossensível de 20x20 (400) células de Sulfeto de Cádmio, as unidades S. Ao reagir com a luz, CdS emite um elétron:
$$CdS + \gamma \rightarrow e^{-} + CdS^{+}$$

Caso a célula seja ativada, envia o sinal eletrônico a uma unidade intermediária A. A unidade intermediária, por sua vez, transmite um sinal eletrônico à saída. A intensidade do sinal é regulada por sucessos prévios. Esse processo ficará mais claro com a implementação a seguir.

![](images/chap3-ship.jpg)  

Imaginemos que a imagem acima tenha 10 pixels de altura e 10 de largura.  
Para simplificação, 10 x 10 pixels em preto e branco (100 pixels com valores entre 0,preto, e 255, branco). Esses pixels podem ser esticados e vistos como uma matriz x de dimensão $[100 x 1]$ com valores entre 0 e 255 em cada elemento.  
Vamos simular uma imagem deste tamanho gerando uma matriz de dimensão 10x10 com 100 valores naturais aleatórios (entre 0 e 255) no R:  

```r
    >set.seed(2600)
    >my.image.data <- sample(0:255,100,replace=T)
    >x <- matrix(my.image.data,10,10)
```
![](images/chap3-shipmat.jpg)

Eis a nossa imagem [10x10]. O computador lê os valores entre 0 (preto) e 255 (branco), dispondo para nós o sinal visual correspondente.  

Em nosso exemplo hipotético, o classificador precisa distinguir quatro tipos de animais a partir da imagem: pássaro, tartaruga, golfinho ou peixe.  

O classificador linear atribui scores para cada uma das 4 classes aplicando seus pesos em cada pixel da imagem.  
Matematicamente, é uma multiplicação da matriz de valores da imagem $x_{i}$, de dimensão $[100 x 1]$ por uma matriz $W_{[100 X 4]}$ que traz pesos (weights) estimados para cada pixel para cada classe.  
O resultado dessa multiplicação de matrizes são scores para cada classe K.  
Vamos considerar que nossa ordem de rótulos é:  
[pássaro, tartaruga, golfinho, peixe]  

Em R:  
```r
    #Iniciando pesos com base em distribuição normal
    #Dividi os valores por 100 para reduzir a magnitude dos numeros
    >my_weights <- rnorm(400)/100
    #Le pesos como matriz [100x4]
    >w <- matrix(my_weights,100,4)
    #Multiplicacao usando o operador %*%
    >as.vector(x)%*%w
    #Resultado
            [,1]     [,2]     [,3]      [,4]
    [1,] 20.95787 22.10932 19.08313 -30.33214
```

O classificador retorna um valor de score para cada classe. A interpretação desses valores pode variar, mas vamos pensar, por enquanto, que nosso objetivo é que o maior score seja o da classe correta.  
Em nosso exemplo, o output: $[20.95787, 22.10932, 19.08313, -30.33214]$.  
Entre os valores, o maior entre os quatro foi o segundo (22.10932), sugerindo o rótulo de tartaruga.  
O processo de aprendizado consiste em ajustar o pesos em $W$ de maneira a retornar o maior score para a classe K correta.  
Fazemos isso expondo o classificador a diversos exemplos $x$ e implementando uma função que corrija os pesos conforme erros.   
A imagem abaixo traz um intuitivo diagrama dessa multiplicação.  

![Disponível em http://cs231n.github.io/linear-classify/ . 
](images/chap3-stanf.jpg)

Essa imagem traz um diagrama do processamento dos dados que resultam nos scores finais paras classes K: cat,dog,ship. Nesse caso, o maior score foi para primeira classe, sugerindo a classificação de cachorro (437.9)  

Para levar em conta uma constante $b$, usaremos um truque: ao adicionar o valor 1 ao final da imagem, a multiplicação dos pesos associados será constante. Assim podemos incluir estimativas do valor de $b$ como pesos em $W$, que, quando multiplicados por 1, serão sempre as mesmas constantes.  

```r
    #Adiciona valor 1 ao vetor e armazena em x.vec. Agora temos 101 elementos
    >x_vec <- c(as.vector(x),1)
    #Inicia pesos, incluindo 4 valores extras para (uma constante para cada score)
    >my_weights<- rnorm(404)/100
    #Leitura como matriz w de dimensao 101x4
    >w <- matrix(my_weights,101,4)
    #Multiplicacao: (pixels da imagem + 1)* (Pesos do classificador)
    >x_vec%*%w
    #Resultado
             [,1]     [,2]      [,3]      [,4]
    [1,] 8.620293 10.08648 -4.423656 -7.804998
```

Agora, nossos scores aleatórios são:
$[8.620293, 10.08648, -4.423656, -7.804998]$
Agora indicando indicando tartaruga (2a posição) com maior score. Como transformar esses pesos em valores úteis?

Inicialmente, estabelecemos pesos aleatórios a partir de uma distribuição normal.  
Então, o objetivo é observar as respostas corretas em várias imagens e alterar os valores de $W$ para que os scores maiores sejam os das classes corretas.  
Esse aprendizado se dá através de uma função de perda $L$.

### Função de perda

A função de perda *(loss function)* quantifica o quão distante estamos dos pesos desejados. O score desejado deve ser maior que os outros.  
Sendo $s_{j}$ o score atribuído à classe correta e $s_{i}$ o score atribuído à i-ésima classe errada:  
A função de perda retorna 0 caso a classe correta tenha score maior $s_{i} - s_{j} < 0$ ou o valor da diferença caso contrário, $s_{i} - s_{j} > 0$.  

$$max(0,s_{i} - s_{j})$$

A perda total é a soma dos erros para cada classe. Adicionamos ainda uma margem determinada delta $(\Delta)$. O score correto deve ser maior que os outros com uma diferença mínima igual a delta. Então, a perda para a observação $x$ é:  

$$L_{x}=\sum_{j \neq i}^{} max(0,s_{i} - s_{j} + \Delta)$$  

A soma L (loss) acumulará um valor de erro se o score correto não estiver distante o suficiente $(\Delta)$ dos deltas incorretos.  
Implementando em R:  

```r
    loss <- function(x,w,cor_class){
     delta <- 1
     #Calcula scores multiplicando valores da imagem por pesos W
     scores <- x_vec%*%w
     #Score da classe correta fornecida pelo argumento da funcao
     correct_class_sc <- scores[cor_class]
     #Obtem numero de classes
     dimensions_class <- length(scores)
     #Perda inicial = 0 
     cur_loss <- 0
     #Loop para calcular a soma dos valores de max(0,score_errado - score_correto), isto é, o erro acumulado
     for (i in 1:dimensions_class){
         if (i == cor_class){next} # pula iteracao para a classe correta
         cur_loss <- cur_loss + max(0,scores[i] - correct_class_sc + delta)
         }
     #Retorna valor total da perda
     return(cur_loss)}
```
E podemos testar os scores para cada classe invocando a função na forma loss(imagem,pesos,classe_correta):

```r
    > loss(x,w,1)
    [1] 2.466183
    > loss(x,w,2)
    [1] 0
    > loss(x,w,3)
    [1] 29.55408
    > loss(x,w,4)
    [1] 40.69811
```

Notem que se informamos que a classe correta é a 2, que tinha o maior score, a função retorna 0. Isto é, o classificador apontou o maior score com a margem adequada e não há perda.  

Se apontamos que a classe correta é uma das outras (1,3 ou 4), a função retorna a perda correspondente.  

Agora, o objetivo é encontrar pesos em $W$ que minimizem $L$ para todos os exemplos. Isso pode ser feito analisando o gradiente de $L$ com cálculo diferencial, ou de maneira numérica, através de algoritmos recursivos (veremos o uso do estimador Markov Chain Monte Carlo).    

Na prática, estamos mexendo nos parâmetros $W$ de forma a direcionar nossa função de perda $L$ aos menores valores, descendo a montanha.  
![Visitem: http://blog.dato.com/parallel-ml-with-hogwild](images/chap3-grad.jpg)


@ Gradiente  http://cs231n.github.io/optimization-1/

Com os novos parâmetros $W$, podemos aplicar o classificador na imagem inédita $x’_{[10x10]}$ e obter scores ajustados para predizer a classe dela.  
Como dá para notar, mesmo num exemplo simplificado, treinar o classificador implica muitas computações de matrizes n-dimensionais. Por isso, precisamos de bastante poder computacional e algoritmos como esse *machine learning* só ganharam atenção com o advento de computadores.  

#### Funções de ativação

A função de ativação descrita anteriormente é linear.  
Cada valor de entrada (e.g. pixel) é ponderado pela matriz de valores $W$. Os valores são somados e resultam em scores. O uso de uma combinação linear é bastante semelhante à regressão múltipla descrita anteriormente. Diferentes funções de ativação podem ser usadas, como a polinomial:

$$f(x)=x^{a}w+b$$

Agora, sabemos examinar um conjunto de imagens rotuladas, criar um classificador linear e treiná-lo (ajustar pesos $W$ minimizando a função de perda $L$) para retornar um maior score nas as classificações corretas.

Referências:
CS231n - Stanford University: Convolutional Neural Networks for Visual Recognition
Karatzoglou et al. Support Vector Machines in R. Journal of Statistical Software. April 2006, Volume 15, Issue 9.


## Parte 2 - Aplicações

@ aplicacao de perceptron

## Parte 3 - Deep learning

Nos textos anteriores (1ª parte — link), mostramos o funcionamento de um classificador simples e usamos (link) um pacote popular para ilustrar a configuração, treinamento e avaliação do modelo (Support Vector Machine).
Um mal entendido envolvendo deep learning é de que produzimos uma caixa preta, útil porém inacessível. Vamos entender como funcionam redes profundas e de onde surge essa confusão.

### Revisão
![Exemplo de “1” em letra cursiva e sua representação numa matriz 2x2. http://colah.github.io/posts/2014-10-Visualizing-MNIST/](images/chap3-digit.jpg)

Podemos representar imagens usando matrizes, como na figura acima. O monitor lê cada número e ativa o ponto brilhante correspondente na tela, criando a ilusão de imagens e filmes.
Implementamos um classificador simples (Support Vector Machine, SVM), que lê uma imagem, como o 1 acima, na forma de matriz. Usando uma função (kernel function), que aceita esse input e considera pesos internos (w), gerando scores empregados nas predições.

![](images/chap3-svm-diag2.jpg)
Esse kernel pode ser simples, com apenas combinações lineares, ou mais complexo, com outras funções (e.g. RBF).

Intuições
Com o aprendizado através de exemplos, otimizamos otimizamos nosso classificador (mudando pesos W) para minimizar a perda, erro, usando aproximações(e.g: Adagrad). A função de perda é menor quando temos pontuações (votos) maiores para as classes certas.
SVMs têm bom desempenho em diversas estruturas de dados, especialmente quando a arquitetura é otimizada por um usuário experiente. Onde entram as redes neurais?

![](images/chap3-waves.jpg)

### Going Deep

As versões reais da maioria dos conceitos criados por seres humanos não são idênticas umas às outras. Em outras palavras, não existe um conjunto rígido de regras para classificarmos a maior parte das entidades ao nosso redor.
Muitas entidades são diferentes, porém similares o suficiente para pertencer a uma mesma categoria.

![](images/chap3-species.jpg)

Todos são naturalmente reconhecidos como felinos, mas apresentam variações de tamanho, cor e proporção em todo o corpo. 

Esse é um problema interessante e antigo. Alguns filósofos acreditam que abstrações humanas são instâncias de um conceito mais genérico: mapas biológicos contidos em redes neuronais (Paul Churchland, Plato’s Camera).
Esses mapas estão associados de forma hierarquizada. Numerosos padrões em níveis inferiores e um número menor em camadas superiores.
No caso da visão, neurônios superficiais captam pontos luminosos. O padrão de ativação sensorial enviado ao córtex visual primário é o primeiro mapa, que é torcido e filtrado caminho cima.

![Resposta a estímulos visuais em V1 de Macaca fascicularis http://www.jneurosci.org/content/32/40/13971](images/chap3-cortex.jpg)

Neurônios intermediários possuem configurações que identificam características simples: olhos e subcomponentes da face. Por fim, temos camadas mais profundas, ligadas a abstrações.

![Retirado de: https://www.youtube.com/watch?v=SeyIg6ArS4Y](images/chap3-deepedges.jpg)


### Deduzindo superfícies
Um classificador deve capturar essa estrutura abstrata a partir de modelos matemáticos tratáveis. Para examinarmos esse aspecto, usemos um exemplo. O gráfico abaixo representa milhares de amostras com: (1) a curva diária natural de um hormônio (em vermelho) e a curva sob uso de esteroides anabolizantes (azul).

![Exemplo inspirado no texto de Chris Olah (http://colah.github.io/posts/2014-03-NN-Manifolds-Topology/)](images/chap3-artifdata.jpg)

Como hipotéticos membros de uma comitê atlético, nosso objetivo aqui é, dada uma amostra, saber se o atleta está sob efeito de esteroides.
Quando experimentamos, normalmente haverá ruídos (erros) na medida e receberemos medições imprecisas da curva. Variações na dieta daquele dia, micções, sudorese, stress e outros fatores.

Usamos o tempo (t, eixo horizontal) e nível hormonal ($\beta$, eixo vertical). 

Numa regressão logística simples, fazemos essa classificação com base nas probabilidades de uma função sigmoide. Temos uma probabilidade (valor entre 0 e 1).
$P(h,\beta) = 1/(1+exp-(i+t*h+\beta*y+\epsilon)).$
$\epsilon$ representa o erro e i é uma constante. 

Em uma linha de R:

$$logist.fit <- glm(type_dic ~ beta + tempo, family=binomial,data=inv.ds)$$

A vantagem de usar essa modelagem é que temos uma relação direta entre o inverso dessa função (P^(-1), “logito”) e a combinação linear dos nossos parâmetros:
$logit (P(x))=i+t*x+\beta*y+\epsilon$
Em outras palavras, o processo de estimação é parecido com o da regressão linear, que é facilmente tratável. Outra consequência é que assumimos que a distinção entre classes (com base no logito, log odds) pode ser dada por um limite. Este tem uma relação linear com nossas variáveis. Estimamos a magnitude e o sentido dessas relações pelos parâmetros da regressão.

![](images/chap3-logitplane.jpg)

Podemos imaginar que o log odds (z, eixo vertical) cresce linearmente com uma combinação de duas variaveis (x e y). Notem que a superfície definida pelo nossa equação/modelo é um plano. z = 3 + 3x + 2y. Plotado no Wolfram Alpha
Estimamos qual seria a posição na reta dada por aquela medida e usamos um limite de decisão (decision boundary) linear. Voltando ao nosso exemplo, seria difícil capturar as diferenças usando apenas esta estratégia.

![](images/chap3-oneneuron.jpg)

Acima, um neurônio sigmoide, que equivale à regressão logística. É como o plano anterior, mas visto de cima, dividimos ele em duas regiões para classficação. http://colah.github.io/posts/2015-01-Visualizing-Representations/
Por que? O classificador linear otimiza suas respostas levando em conta apenas o valor absoluto da medida hormonal. Isto é, valores acima de um limite serão considerados dopping, não considerando horário. Matematicamente, o coeficiente para o tempo foi ajustado em 0. Mudar isso tornaria a reta divisória inclinada em relação ao eixo x, piorando a classificação.

Podemos verificar isso diretamente através dos parâmetros estimados em nosso modelo de regressão.

```r
> summary(logist.fit)
Call:  glm(formula = type_dic ~ beta + tempo, family = binomial, data = inv.ds)
Coefficients:
 (Intercept)     beta        tempo
-0.8752803   -3.6195723   -0.0001221 # Próximo a zero
Degrees of Freedom: 999 Total (i.e. Null);  997 Residual
Null Deviance:     1386
Residual Deviance: 774.4  AIC: 780.4
> prob=predict(logist.fit,type=c("response"))
> inv.ds$prob=prob
> curve <- roc(type_dic ~ prob, data = inv.ds)
> curve

Call:
 roc.formula(formula = type_dic ~ prob, data = inv.ds)
Data: prob in 500 controls (type_dic 0) < 500 cases (type_dic 1).
Area under the curve: 0.8767
```
### Quem poderá nos ajudar?

A solução é introduzir termos polinomiais de grau mais alto $(x^{2},x^{3}…)$, interações ou usar funções mais complexas. Aí corremos o risco de realizar sobre ajuste. Deixar o sinal dos confundir e fazer um modelo complexo que não funciona em novos exemplos.
E o que acontece se conectarmos classificadores simples hierarquicamente?

A resposta de uma unidade é usada como a entrada de outras. Quando processamos o sinal em etapas, cada camada modifica os dados para as camadas posteriores, transformando e filtrando/dando forma.

As camadas intermediárias permitem a transformação gradual do sinal, e o sistema acerta usando apenas dois classificadores simples (sigmoides). No exemplo acima, temos uma camada de 2 neurônios entre o input e o output.
![http://colah.github.io/posts/2015-01-Visualizing-Representations/](images/chap3-twolayers.jpg)

Agora, a primeira camada (hidden) modifica a entrada com duas unidades sigmoides e a segunda camada pode classificar corretamente usando apenas uma reta, algo que era impossível antes.
Em tese, esse modelo pode capturar melhor as características que geraram os dados (flutuação hormonal ao longo do dia).

Neurônios
Notem que o diagrama acima lembra uma rede neural. Esse tipo de classificador foi inspirado na organização microscópica de neurônios reais e acredita-se que seu funcionamento seja de alguma forma análogo. A arquitetura de redes convolucionais (convolutional neural networks), estado da arte em reconhecimento de imagens, foi inspirada no córtex visual de mamíferos (https://www.ncbi.nlm.nih.gov/pmc/articles/PMC1557912/).
Outros modelos bio inspirados (Spiking neural networks, LTSMs…) apresentam desempenhos inéditos para tarefas complexas e pouco estruturadas, como reconhecimento de voz e tradução de textos.
A teoria mais aceita é de que o maquinário neural dos animais foi desenhado por processos evolutivos, como a seleção natural. Assim, apresenta coloridas formas de complexidade a depender da tarefa desempenhada.

![](images/chap3-realnet.jpg)

Como podemos ver, as redes biológicas são complexas, com até dezenas de bilhões de unidades de processamento paralelas conectadas. Zona destacada possui grafo isomorfo ao descrito no texto. Modificado de http://www.rzagabe.com/2014/11/03/an-introduction-to-artificial-neural-networks.html

Nos modelos profundos (deep) de reconhecimento de rosto, neurônios de camadas superficiais capturam bordas, ângulos e vértices, camadas intermediárias detectam presença de olhos, boca, nariz. Por fim, camadas ao final da arquitetura decidem se é um rosto ou não e a quem ele pertence.


Eficiência e aplicações

Podemos demonstrar formalmente que uma rede neural com apenas uma camada interna é capaz de aproximar qualquer função. A prova não é lá essas coisas, já que, no fundo o que fazemos é criar uma tabela de consulta (lookup table) para os valores de entrada e saída usando os neurônios.
Na prática, é difícil obter boas performances. Tão difícil que redes neurais passaram décadas esquecidas. Se você rodar o modelo abaixo, baseado no nosso exemplo, verá que a acurácia é próxima da regressão logística. É necessário algum conhecimento e tempo para afinar os detalhes.
Normalmente, depende da qualidade e da quantidade dos dados.

```r
# Neural Net para o exemplo
library(deepnet)
inv.ds$tempo.norm <- normalize(inv.ds$tempo)
deep.log.dbn <- dbn.dnn.train(
 x=as.matrix(inv.ds[,c("beta","tempo.norm")]),
 y=as.numeric(as.character(inv.ds$type_dic)),
 hidden = c(2), activationfun = "sigm",
 learningrate=2.65, momentum=0.85, learningrate_scale=1,
 output = "sigm", numepochs=3, batchsize= 11)
```

As redes neurais passaram algum tempo esquecidas, até que algumas reviravoltas (http://people.idsia.ch/~juergen/who-invented-backpropagation.html) permitiram o treinamento eficaz delas redes. Algoritmos para melhorar o treinamento, assim como arquiteturas econômicas ou especialmente boas em determinadas tarefas.
Além disso, o uso de processadores gráficos (GPU), desenhados para as operações de álgebra linear que discutimos (com matrizes) permitiu treinar em um volume maior de dados.

### Backpropagation

Uma vez que o texto é sobre deep leaning, precisamos falar de backpropagation .
Como vimos nas partes 1 e 2, o treinamento consiste em ajustar os pesos W do classificador (SVM) para minimizar a função que calcula nosso erro E.
Como alguém de olhos vendados em uma ladeira, podemos dar um passo e saber medir qual o efeito sobre a nossa altura (subimos ou descemos, + ou -), assim como a intensidade (magnitude numérica: 50cm ou 70 cm). A partir daí, definimos uma regra para movimentação.

![](images/chap3-walk.jpg)

Quando treinamos um único nodo (SVM), o nosso trabalho é como o de um cego tateando até descer ao lugar mais baixo. É possível seguir o caminho aos poucos. Com redes profundas, a entrada de um nodo depende da saída dos que se conectam a ele. O sistema é um pouco mais complexo.
Vamos usar derivadas. Ou seu equivalente para funções de múltiplas variáveis, gradiente. O gradiente é um vetor/lista com as derivadas parciais daquela função.
Matematicamente, queremos a derivada parcial da função de custo (f) com respeito às entradas. Como vimos, podemos encarar a rede neural como uma sequência de funções plugadas. Se o primeiro nó tem q(x,y), o segundo, f, tem valor f(q(x,y) ou f o q.

$q(x,y) = 3x+2y$ #camada inferior  
$f(z) = z^{2}$ #camada superior  
$f(q(x,y)) = q^{2} = (3x+2y)^{2}$ # input inferior para superior  


Podemos calcular o efeito de mudanças inter nodos com a regra de cadeia funções compostas. Isto é, podemos obter o gradiente de erro no nodo de hierarquia mais alta (f), com respeito a uma das variáveis de entrada (x) na hierarquia mais baixa. A operação é computacionalmente barata, bastando multiplicar as derivadas parciais dos erros em cada parte.

$$\frac{df}{dx}=\frac{df}{dq}\frac{dq}{dx}$$

É possível calcular de forma recursiva, portanto local e paralela, ao longo das camadas. Fazendo o mesmo acima para df/dy, teremos os valores de [df/dx ; df/dy] que é precisamente nosso gradiente.

```r
# Valor duplo (x,y) para inputs
x=1
y=3
q = 3*x + 2*y # primeira camada
f = q^2 # segunda camada
# Backprop - Mudanças em hierarquia superior
# dadas por entradas de camadas inferires
dfdq = 2*q # derivada de x^2 ; variação de f em função de q
dqdx = 3 # Derivada de 3x ; variação de q em função de x
dqdy = 2 # Derivada de 2x ; variação de q em função de y
# Obter gradiente de f(x,y) multiplicando as parciais
dfdx = dfdq*dqdx
dfdy = dfdq*dqdy
grad = c(dfdx,dfdy)
> grad
[1] 24 16
```

Usando essa lógica, calculamos os gradientes para a função de erro e treinamos o modelo.

Referência
 Para uma história completa: J. Schmidhuber. Deep Learning in Neural Networks: An Overview. Neural Networks, 61, p 85–117, 2015. (Based on 2014 TR with 88 pages and 888 references, with PDF & LATEX source & complete public BIBTEX file).


Recomendo esse paper aqui para uma abordagem mais profunda e definições formais com hiperplanos — Support Vector Machines in R ( Alexandros Karatzoglou, David Meyer, Kurt Hornik).

http://web.csulb.edu/~cwallis/artificialn/History.htm

\pagebreak