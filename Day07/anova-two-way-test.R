df <- read.csv('D:/R/R/hocvien2.csv', header=TRUE)

df

model <- aov(Multimedia ~ QTR*LOCATION, data=df)
summary(model)
#-> chấp nhận H0 dựa vào cột Pr(>F) nếu > 0.05
#pvalue cùa ( Multimedia & QTR) = 0.275 > 5%
# Chấp nhận H0 -> số lượng đăng ký và ngành multimedia koo phụ thuộc vào quý