library(ggthemes)
library(ggplot2)
library(tidyr)

t_dists <- purrr::map(c(3,5,10,15,20,30),
                      .f = function(x) dt(seq(-4,4,by=0.1), df = x))

t_df <- as.data.frame(t_dists)

names(t_df)[1:6] <- c("3","5","10","15","20","30")

plot_df <- gather(t_df,value="probs")

plot_df$ID <- rep(x=(1:81),6)

names(plot_df)[1] <- "dfs" 
plot_df$dfs <- factor(plot_df$dfs,levels = c("3","5","10","15","20","30"))
  
ggplot(plot_df,aes(y=probs, x=ID,color=dfs))+
  geom_point(alpha=0.6)+
  theme_fivethirtyeight()