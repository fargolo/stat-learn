library(magrittr)
library(ggplot2)

re_vec <- c(1/2,1/3,1/4,1/5,
               1/6,1/7,1/8,1/9,1/10)
im_vec <- (rep(pi/3,times=length(re_vec)))

my_data <- cbind(re_vec,im_vec,1:length(re_vec)) %>% data.frame

re_vec2 <- c(1/2,1/3,1/4,1/5,
             1/6,1/7,1/8,1/9,1/10,1/11)

for (i in 1:length(re_vec)){
  my_data$x_rot[i] <- my_data$re_vec[i]*my_data$im_vec[i]*cos(pi/3)  
  my_data$y_rot[i] <- my_data$re_vec[i]*my_data$im_vec[i]*sin(pi/3)
}

my_data$x_origs <- my_data$re_vec+my_data$x_rot

my_data$y_origs <- numeric(length = 9)
for (i in 2:length(re_vec)){
  my_data$x_origs[i] <- my_data$x_origs[i-1]
  my_data$y_origs[i] <- my_data$y_rot[i]*sin(im_vec[i])
  }

ggplot(my_data)+
  geom_point(aes(x=re_vec,y=im_vec))+
  geom_segment(aes(x=x_origs, xend=x_rot,
                   y=y_origs, yend=y_rot,
                   color=factor(V3)))+
  xlim(0,2)

re_vec * im_vec

