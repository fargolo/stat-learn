library(ggthemes)
library(ggplot2)
library(tidyr)

bin_dists <- purrr::map(c(3,5,10,15,20,30),
                      .f = function(x) dbinom(seq(0,50,by=0.1), 
                                              prob=0.5,size = x))

t_df <- as.data.frame(bin_dists)

names(t_df)[1:6] <- c("3","5","10","15","20","30")

plot_df <- gather(t_df,value="probs")

plot_df$ID <- rep(x=(1:(nrow(plot_df)/6)),6)

names(plot_df)[1] <- "n" 
plot_df$n <- factor(plot_df$n,levels = c("3","5","10","15","20","30"))

ggplot(plot_df,aes(y=probs, x=ID,color=n))+
  geom_line(alpha=0.6)+
  facet_grid(cols=vars(n))+
  theme_minimal()+xlab("")+ylab("")+
  theme(axis.text.x = element_blank(), axis.ticks = element_blank())+
  xlim(0,300)
