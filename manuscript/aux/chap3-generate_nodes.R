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
  geom_nodes(color="gold",size=22) +
  geom_edges(arrow = arrow(length = unit(10, "pt"),type = "closed"),
             color = "white",
             curvature = 0.1,size=0.5) +
  geom_nodetext(aes(label = vertex.names),
                fontface = "bold",size=2.7) +
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
  geom_nodes(color="gold",size=22) +
  geom_edges(arrow = arrow(length = unit(8, "pt"),
                           type = "closed"),
             color = "white",
             curvature = 0.2,size=0.3) +
  geom_nodetext(aes(label = vertex.names),
                fontface = "bold",size=2.7) +
  xlim(-0.2,1.2)+ylim(-0.2,1.2)+
  theme_minimal()+
  theme(axis.text = element_blank(),
        axis.title = element_blank(),
        panel.background = element_rect(fill = "grey25"),
        panel.grid = element_blank())


