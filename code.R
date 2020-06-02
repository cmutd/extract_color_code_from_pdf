# install.packages("eoffice")

library(eoffice)

# exclude_col: vector of colors to be excluded from the analysis
# topn: display the most frequent colors. The default is 10


pdf <- infigure(filename="figure.pdf",exclude_col = "white",topn=20) 


color <- ggplot(df,aes(reorder(x,y),y=y))+
  geom_col(aes(fill=color))+
  scale_fill_manual(values = pdf)+
  ylab(NULL)+
  xlab(NULL)+
  theme_bw()+
  theme(plot.margin = margin(1,1,1,1,"cm"))

ggsave(color,filename = "color_code.pdf")
