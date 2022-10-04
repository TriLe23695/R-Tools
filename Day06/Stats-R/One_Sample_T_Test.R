
#------T-TEST DÙNG CHO MẪU NHỎ--------
# Bài toán:
# Người ta tiến hành điều tra năng suất của giống lúa mới tại Miền Tây để đánh giá 
# xem năng suất trung bình có đạt 5.53 tạ/ha
# Biết rằng sau 6 tháng trồng lúa thử nghiệm người ta lần lượt thu hoạch trên các khu vực thí điểm 
# như sau: 5.44, 5.51, 5.48, 5.56, 5.49, 5.54

install.packages("BSDA")
library(BSDA)
data <- c(5.44, 5.51, 5.48, 5.56, 5.49, 5.54)

qqnorm(data)
qqline(data)

t.test(x=data,mu=5.53,alternative = "less",conf.level = 0.95)

# data:  data
# t = -1.5119, df = 5, p-value = 0.09549
#a lternative hypothesis: true mean is less than 5.53
# 95 percent confidence interval:
#  -Inf 5.538875
# sample estimates:
#  mean of x 
# 5.503333

# KẾT LUẬN: CHẤP NHẬN H0. Có đủ bằng chứng để nói là giống lúa mới có năng suất trung bình là 5.53