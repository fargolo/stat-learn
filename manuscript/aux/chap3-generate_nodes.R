#Added ', drop = FALSE' to line 142 of file fortify-network.R:
#nrow(edges[, 1:2, drop = FALSE]) > nrow(unique(edges[, 1:2, drop = FALSE]))

library(network)
library(ggnetwork)
library(ggplot2)
sim_reg <- matrix(c(1,1,
                    0,1),ncol=2,nrow = 2)
sim_regn <- network(sim_reg)

set.vertex.attribute(sim_regn, attrname = "vertex.names", 
                     value = c("Hale","Nº Médicos"))

sim_regn_plot <- ggnetwork(sim_regn)

ggplot(sim_regn_plot, aes(x = x, y = y, 
                          xend = xend, yend = yend)) +
  geom_nodes(color="gold",size=11) +
  geom_edges(arrow = arrow(length = unit(5, "pt"),type = "closed"),
             color = "white",
             curvature = 0.1,size=0.25) +
  geom_nodetext(aes(label = vertex.names),
                fontface = "bold",size=1.35) +
  xlim(-0.2,1.2)+ylim(-0.2,1.2)+
  theme_minimal()+
  theme(axis.text = element_blank(),
        axis.title = element_blank(),
        panel.background = element_rect(fill = "grey25"),
        panel.grid = element_blank())

## Mult reg
mult_reg <- matrix(c(1,1,1,
                     0,1,0,
                     0,0,1),ncol=3,nrow = 3)
mult_regn <- network(mult_reg)

set.vertex.attribute(mult_regn, attrname = "vertex.names", 
                     value = c("Hale","Nº Médicos","IDH"))

mult_regn_plot <- ggnetwork(mult_regn)

ggplot(mult_regn_plot, aes(x = x, y = y, 
                          xend = xend, yend = yend)) +
  geom_nodes(color="gold",size=11) +
  geom_edges(arrow = arrow(length = unit(4, "pt"),
                           type = "closed"),
             color = "white",
             curvature = 0.2,size=0.15) +
  geom_nodetext(aes(label = vertex.names),
                fontface = "bold",size=1.35) +
  xlim(-0.2,1.2)+ylim(-0.2,1.2)+
  theme_minimal()+
  theme(axis.text = element_blank(),
        axis.title = element_blank(),
        panel.background = element_rect(fill = "grey25"),
        panel.grid = element_blank())

## CFA
cfa_reg <- matrix(c(1,0,0,0,0,0,1,
                    0,1,0,0,0,0,1,
                    0,0,1,0,0,1,0,
                    0,0,0,1,0,1,0,
                    0,0,0,0,1,1,0,
                    0,0,0,0,0,1,0,
                    0,0,0,0,0,0,1),ncol=7,nrow = 7)
cfa_regn <- network(cfa_reg)

set.vertex.attribute(cfa_regn, attrname = "vertex.names", 
                     value = c("X1","X2","X3","X4","X5","F1","F2"))

cfa_regn_plot <- ggnetwork(cfa_regn)

ggplot(cfa_regn_plot, aes(x = x, y = y, 
                           xend = xend, yend = yend)) +
  geom_nodes(color="gold",size=11) +
  geom_edges(arrow = arrow(length = unit(4, "pt"),
                           type = "closed"),
             color = "white",
             curvature = 0.5,size=0.15) +
  geom_nodetext(aes(label = vertex.names),
                fontface = "bold",size=1.35) +
  xlim(-0.2,1.2)+ylim(-0.2,1.2)+
  theme_minimal()+
  theme(axis.text = element_blank(),
        axis.title = element_blank(),
        panel.background = element_rect(fill = "grey25"),
        panel.grid = element_blank())


## Cover
big_reg <- matrix(c(1,0,0,0,0,0,1,1,1,1,
                    0,1,0,0,0,0,1,1,1,1,
                    0,0,1,0,0,1,0,1,0,0,
                    0,0,0,1,0,1,0,0,0,0,
                    0,0,0,0,1,1,0,0,0,0,
                    0,1,1,0,0,1,0,0,0,0,
                    0,0,0,0,0,0,1,1,1,1,
                    0,0,1,0,0,0,1,1,1,1,
                    0,1,0,0,0,0,1,1,1,1,
                    0,0,0,0,0,0,1,1,1,1),ncol=10,nrow = 10)

big_regn <- network(big_reg)

set.vertex.attribute(big_regn, attrname = "vertex.names", 
                     value = c(""))

big_regn_plot <- ggnetwork(big_regn)

ggplot(big_regn_plot, aes(x = x, y = y, 
                          xend = xend, yend = yend)) +
  geom_nodes(color="gold",size=11) +
  geom_edges(arrow = arrow(length = unit(4, "pt"),
                           type = "closed"),
             color = "white",
             curvature = 0.3,size=0.15) +
  geom_nodetext(aes(label = vertex.names),
                fontface = "bold",size=1.35) +
  xlim(-0.2,1.2)+ylim(-0.2,1.2)+
  theme_minimal()+
  theme(axis.text = element_blank(),
        axis.title = element_blank(),
        panel.background = element_rect(fill = "grey25"),
        panel.grid = element_blank())


## Mark ii reg
mark_reg <- matrix(c(1,0,0,0,0,0,
                     1,1,0,0,0,0,
                     0,1,1,0,0,0,
                     0,1,0,1,0,0,
                     0,0,1,1,1,0,
                     0,0,0,0,1,1),ncol=6,nrow = 6)
mark_regn <- network(mark_reg)

set.vertex.attribute(mark_regn, attrname = "vertex.names", 
                     value = c("X","W1","W21","W22","+","Y"))

mark_regn_plot <- ggnetwork(mark_regn)

ggplot(mark_regn_plot, aes(x = x, y = y, 
                           xend = xend, yend = yend)) +
  geom_nodes(color="light blue",size=11) +
  geom_edges(arrow = arrow(length = unit(4, "pt"),
                           type = "closed"),
             color = "grey70",
             curvature = 0.3,size=0.15) +
  geom_nodetext(aes(label = vertex.names),
                fontface = "bold",size=3) +
  xlim(-0.2,1.2)+ylim(-0.2,1.2)+
  theme_minimal()+
  theme(axis.text = element_blank(),
        axis.title = element_blank(),
        panel.background = element_rect(fill = "white"),
        panel.grid = element_blank())

