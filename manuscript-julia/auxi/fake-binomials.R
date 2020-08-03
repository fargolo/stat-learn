library(ggplot2)
set.seed(2600)
hundtou_sample<- rnorm(n = 800)
freq_data <- data.frame(a = hundtou_sample,
                        b = hundtou_sample + 10,
                        c = hundtou_sample + 20,
                        d = hundtou_sample + 30)

ggplot(freq_data)+
  xlim(-5,35)+
  geom_histogram(mapping = aes(x=a,y=..density..),fill="pink",bins = 20,alpha=0.8)+
  geom_histogram(mapping = aes(x=b,y=..density..),fill="light blue",bins = 50,alpha=0.8)+
  geom_histogram(mapping = aes(x=c,y=..density..),fill="dark green",bins = 75,alpha=0.8)+
  geom_histogram(mapping = aes(x=d,y=..density..),fill="dark red",bins = 400,alpha=0.8)+
  xlab("")+ylab("")+
  scale_x_continuous(breaks = NULL)
