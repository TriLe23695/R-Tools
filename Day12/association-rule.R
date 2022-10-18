#---------------KHAI PHÁ LUẬT KẾT HỢP VÀ ỨNG DỤNG
install.packages("arules")
install.packages('arulesViz')

library(arules)
library(arulesViz)
# Đọc dữ liệu dưới dạng các transaction
dataset = read.transactions("D:/Data Analysis/R-Tools/Day12/Market_Basket_Optimisation.csv",
                  sep=",",rm.duplicates=TRUE)
#dataset <- as("D:/Data Analysis/R-Tools/Day12/Market_Basket_Optimisation.csv","transactions")

# Xem số chiều của dữ liệu
dim(dataset)   

# Xem có bao nhiêu món hàng trong tập dữ liệu
itemLabels(dataset) 

# Xem cấu trúc của tập dữ liêu
str(dataset)    

#Tóm tắt dữ liệu
summary(dataset)

# Trực quan Top 10 món hàng được mua
itemFrequencyPlot(dataset,topN=10,cex.names=1)

# Tổng quan giao dịch và món hàng
image(dataset[0:250,]) # Từ giao dịch 1 đến 250
    # Các màu chi chít: Sản phẩm và giao dịch kết hợp chặt chẽ với nhau
    # Các màu thưa thớt: sản phẩm và giao dịch kết hợp không chặt chẽ với nhau

# Chạy luật kết hợp
set.seed = 200
  #maxlen: độ dài kết hợp tối đa

assrules <- apriori(data=dataset,
                 parameter = list(supp=0.004,conf=0.2,
                                  maxlen=6,minlen=4,target="rules"))
# Tóm tắt luật sinh ra
summary(assrules)

#Xem kết quả các luật
inspect(assrules)

# Xây dựng luật kết hợp tuỳ chọn để biết trước khi mua trứng thì người ta sẽ mua gì
# rhs (right hand side)
eggs_rules_rhs <- apriori(data=dataset,
                          parameter = list(supp=0.004,conf=0.2,
                                           maxlen=6,minlen=4),
                          appearance = list(default="lhs",rhs="eggs"))

inspect(eggs_rules_rhs)

# Khai phá luật kết hợp để biết sau khi mua trứng thì người ta sẽ mua cái gì

eggs_rules_lhs <- apriori(data=dataset,
                          parameter = list(supp=0.004,conf=0.2,
                                           maxlen=6,minlen=1),
                          appearance = list(lhs="eggs",default="rhs"))
inspect(eggs_rules_lhs)

# Trực quan dữ liệu 10 rules có mức độ cao nhất
subrules <-head(assrules,n=10,by="confidence")
plot(subrules,method="graph",engine="htmlwidget")