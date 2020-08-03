heavi_plot<- data.frame(x=purrr::map(seq(from=-10,to=10,by = 0.25),phi_heavi) %>% 
                          unlist,y=seq(from=-10,to=10,by = 0.25)%>%unlist)
ggplot(heavi_plot,aes(y=x,x=y))+
  geom_point(alpha=0.3,size=3,color="white")+xlab("")+ylab("")+
  geom_point(mapping = aes(x=0,y=1),color="purple4")+
  geom_point(mapping = aes(x=0,y=-1),color="purple2")+
  geom_abline(slope=0,intercept = 0,linetype="dashed",color="white")+
  geom_vline(xintercept = 0,linetype="dashed",color="white")+
  scale_x_continuous()+
  scale_y_continuous()+
    theme_hc(style = "darkunica")
    
