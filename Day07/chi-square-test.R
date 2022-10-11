#mẫu > 30
#H0: Hai biến không có quan hệ

df <- read.csv('D:/R/R/sales.csv')
df

cross_table = table(df$Region, df$Item)
cross_table

#chi-quare
test = chisq.test(df$Region, df$Item)
test