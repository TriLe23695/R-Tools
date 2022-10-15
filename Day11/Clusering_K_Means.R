# https://www.r-bloggers.com/2015/12/k-means-clustering-in-r/


# Step 1: Load data
data <- read.csv("D:/Data Analysis/R-Tools/Day11/binary.csv", header = T)
data

# Step X: Xử lý dữ liệu và EDA dữ liệu

data$rank[data$rank==1]<- "1"
data$rank[data$rank==2]<- "2"
data$rank[data$rank==3]<- "3"
data$rank[data$rank==4]<- "4"
data$admit <- as.factor(data$admit)

library(ggplot2)
ggplot(data,aes(gpa,gre,color=rank)) + geom_point()

set.seed(20)# chia thành 4 cum, lấy từ cột 2 đến cột 3, lắp 20 lần
cluster <- kmeans(data[,2:3],4,nstart = 20)
cluster

table(cluster$cluster,data$rank)

cluster$cluster <- as.factor(cluster$cluster)
ggplot(data,aes(gpa,gre,color = cluster$cluster))+geom_point()
