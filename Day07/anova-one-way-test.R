#anova one way sử dụng cho biến định lượng
#- Normal dist(giả sử là phân phối chuẩn)
#- Độ lệch giữa các biến bằng nhau 

# H0 = trung bình của các sản phẩm là bằng nhau

#dt <- read.csv('D:/R/R/hocvien.csv')
dt <- read.csv('D:/R/R/fastfood.csv')
dt

r = c(t(as.matrix(dt)))
r

f =c("Coke", "Chicken", "Cheese")
k =3
n =6

tm = gl(k,1,n*k, factor(f))
tm

av = aov(r ~ tm)
summary(av)


#vd2 học viên csv
dt2 <- read.csv('D:/R/R/hocvien.csv')
dt2

r = c(t(as.matrix(dt2)))
r

f = c("Software", "DataAnalysis", "Networking", "Multimedia")
k = 4
n = 11

tm = gl(k,1,n*k, factor(f))
tm

av = aov(r ~ tm)
summary(av)