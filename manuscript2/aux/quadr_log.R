library(tidyr)
library(ggplot2)
library(ggthemes)
set.seed(2600)

n_samp <- 601

normal <- (purrr::map(seq(-3,3,0.01), .f =function(x) x^2) %>%
              as.numeric)+ rnorm(n_samp)
over <- (purrr::map(seq(-3,3,0.01), .f =function(x) x^2+2) %>%
            as.numeric)+ rnorm(n_samp)
horm_df <- data.frame(norm = normal, ov = over,time=1:n_samp)

horm_gat <- gather(data=horm_df,key="class",value="testost",norm,ov)

horm_gat$lab <-  car::recode(horm_gat$class,"'norm'=0;'ov'=1")
horm_gat$id <- 1:nrow(horm_gat)    

reg_log <- glm(lab ~ testost + time, 
               data=horm_gat,family = binomial)
reg_log_quad <- glm(lab ~ testost + I(time2^2), 
               data=horm_gat,family = binomial)

horm_gat$logis_pred <- predict(reg_log,type="response")
horm_gat$logis_pred_quad <- predict(reg_log_quad,type="response")


Deducer::rocplot(reg_log)

ggplot(data=horm_df,aes(y=norm,x=time))+
  geom_point(color="white",shape=5)+
  geom_point(data=horm_df,aes(y=over,x=time),color="yellow",shape=5)+
  ylab("Hormônio (Beta)")+xlab("Tempo (t)")+
  scale_x_continuous(labels=NULL)+
  theme_hc(style="darkunica")

ggplot(data=horm_gat,aes(y=lab,color=lab,x=id))+
  geom_point()+
  ylab("Classes e probabilidades")+xlab("")+
  scale_x_continuous(labels=NULL)+
  theme_hc(style="darkunica")+
  geom_point(data=horm_gat,aes(y=logis_pred,x=id),
             color="red",shape=5,alpha=0.3)+
  geom_point(data=horm_gat,aes(y=logis_pred_quad,x=id),
             color="green",shape=3,alpha=0.3)+
  scale_color_continuous_tableau()+
  theme(legend.position = "none")
  