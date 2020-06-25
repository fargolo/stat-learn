Cálculo (Derivativas, mínimos e máximos, regra de cadeia, regra do tombo)
Estatística (Otimização, Função de Perda: Norma Euclidiana, Regressão)

library(png)
library(grid)
library(ggplot2)

book_cov <- readPNG("../images/cover.png")
book_img <- rasterGrob(book_cov,interpolate = T)

ggplot()+annotation_custom(book_img,xmin = -Inf,xmax = Inf,ymin=-Inf,ymax=Inf)

felipe.c.argolo@protonmail.com
leanpub.com/cienciadados
