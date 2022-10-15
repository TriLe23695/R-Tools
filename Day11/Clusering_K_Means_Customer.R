

data <- read.csv("D:/Data Analysis/R-Tools/Day11/Mall_Customers.csv", header = T)
data

# Nhóm 5: nhiều tiền/ tiêu ít: đưa ra các tin khuyến mãi

set.seed(20)
cluster <- kmeans(data[,4:5],5,nstart = 20)
cluster


cluster$cluster <- as.factor(cluster$cluster)
ggplot(data,aes(AnnualIncome,SpendingScore,color = cluster$cluster))+geom_point()
