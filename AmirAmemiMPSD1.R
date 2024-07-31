install.packages("arules")
install.packages("Matrix")
install.packages("xlsx")
library(xlsx)
data <- read.xlsx("C:/Users/The100IQ/OneDrive/Bureau/market.xlsx",1)
data
library(arules)

param <- list(supp = 0.015, minlen = 2, maxlen = 4,target="frequent itemsets")
result <- apriori(as.matrix(data),parameter = param)
inspect (result[1:12])

param <- list(supp = 0.015,conf=0.7, minlen = 2, maxlen = 4,target="rules")
result <- apriori(as.matrix(data),parameter = param)
inspect (result[1:12])

inspect (result[1:5])

regles.tri <- sort(result, by="lift")
inspect (regles.tri[1:5])
