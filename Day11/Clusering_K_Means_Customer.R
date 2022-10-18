

data <- read.csv("D:/Data Analysis/R-Tools/Day11/Mall_Customers.csv", header = T)
data

# Nhóm 5: nhiều tiền/ tiêu ít: đưa ra các tin khuyến mãi

set.seed(20)
cluster <- kmeans(data[,4:5],6,nstart = 20)
cluster


data$AnnualIncome <- factor(data$AnnualIncome)
data$SpendingScore <- factor(data$SpendingScore)
ggplot(data,aes(AnnualIncome,SpendingScore,color=Gender)) + geom_point()

set.seed(20)
cluster$cluster <- as.factor(cluster$cluster)
cluster

table(cluster$cluster,data$Gender)
ggplot(data,aes(AnnualIncome,SpendingScore,color = cluster$cluster))+geom_point()


install.packages("factoextra")
library(ggplot2)
library(factoextra)
library(dplyr)


# Optical number of cluster
fviz_nbclust(data[,4:5],kmeans,method = "wss") + geom_vline(xintercept = 6, linetype=2)

# Ky thuat khai pha khach hang FRM -> PCA -> Kmeans ->segment customer