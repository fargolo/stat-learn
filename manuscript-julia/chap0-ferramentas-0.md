---
output:
  pdf_document: default
  html_document: default
---
![](images/chap0-cover.png)

# Capítulo 0 : Ferramentas

Programação com estatística básica

\pagebreak


<div style="text-align: right"> Master Foo and the Shell Tools[^1] </div>

---

*Um aprendiz do caminho Unix veio ao Mestre Foo e disse: “Estou confuso. Não é o caminh
Unix que cada programa deve se concentrar em uma coisa e fazê-la bem?  
Mestre Foo assentiu.  
O aprendiz continuou: “Também não é do caminho Unix que a roda não deve ser reinventada?  
Mestre Foo assentiu novamente.  
“Então, por que existem diversas ferramentas com capacidades similares em processamento de texto: sed, awk e Perl? Com qual delas posso praticar melhor o caminho Unix?”  
Mestre Foo perguntou ao aprendiz: “Se você tem um arquivo de texto, qual ferramenta usaria para produzir uma cópia com algumas palavras trocadas por uma string de sua escolha?”  
O aprendiz torceu o nariz e disse: “As expressões regulares de Perl seriam um excesso para tarefa tão simples. Eu não conheço awk, e venho escrevendo scripts sed nas últimas semanas. Como tenho experiência com sed, eu preferiria ele no momento. Mas se o trabalho precisa ser feito apenas uma vez, um editor de textos funcionaria.”  
Mestre Foo assentiu e respondeu: “Quando você estiver com fome, coma; quando estiver com sede, beba; quando estiver cansado, durma.”  
E, ao ouvir isso, o aprendiz foi iluminado.*

[^1]: http://catb.org/esr/writings/unix-koans/shell-tools.html

\pagebreak 

## Computadores

Ao longo do texto, usaremos exemplos com software. Computadores são úteis para acelerar os cálculos necessárias para nossos objetivos.  

Há milênios, o homem usa instrumentos, como ábacos e tabelas, para fazer operações extensas e precisas envolvendo grandes números. Dado um problema ou dado a ser computado, esses mecanismos automatizam partes do processo devido à maneira como foram construídos. A principal diferença destas ferramentas para os computadores de hoje é que nossas máquinas podem ser programadas para fazer computações arbitrárias.  

Ada Lovelace (*10 December 1815 – 27 November 1852*) foi a primeira a descobrir essa possibilidade. Estudando a Máquina Analítica de Charles Babbage, Ada concebeu uma maneira de realizar computações para as quais a máquina não havia sido desenhada originalmente. O programa concebido calculava os Números de Bernoulli. Discutivelmente, alterar a estrutura de máquinas mais simples também consiste em reprogramá-las.   

Máquinas desse tempo pesavam toneladas e eram muito mais lentas. O avançar dos anos tornou a tecnologia mais acessível, ao ponto de possibilitar computadores pessoais de alta potência e baixo-custo. Além disso, ao invés de operações mecânicas complexas, podemos usar linguagens de programação que traduzem comandos baseados no inglês para instruções de máquina. 

Os programas aqui apresentados são escritos em Julia. É uma linguagem com compilador em tempo real (JIT) voltada à computação estatística, possuindo ferramentas úteis em sua biblioteca de base. Entre estas, funções para gerar e manipular distribuições probabilísticas. 

Sendo uma linguagem de ‘alto nível’, não temos sobrecarga cognitiva no programador com manejo de memória e hardware no código. A abstração de detalhes físicos, como registradores da CPU, são feitas automaticamente pelo interpretador. O ecossistema para visualização de dados possui poder e flexibilidade. A comunidade cresce rápido e fluência nessa linguagem dá acesso a ferramentas muito diversas com bases grandes de suporte. Há suporte para estilo funcional e orientado a objetos.  


\pagebreak 

## Curso rápido

Códigos são importantes ao longo dos próximos capítulos para realizar cálculos, gerar dados e visualizações.  
Felizmente, os programas que escreveremos são simples, de forma que não precisamos conhecer todos os recursos e características da linguagem. 
O capítulo 0 apresenta instrumentos básicos (R e Julia) para caminharmos.  
Veremos diversas maneiras de escrever um programa para calcular a variância $\sigma^{2}$ de um conjunto de medidas.   
