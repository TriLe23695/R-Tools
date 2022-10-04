#--------KIỂM ĐỊNH TỶ LỆ------------
# Bài toán: Trong mùa dịch covid người ta khảo sát tại 900 người tại tỉnh lẻ thì 
# thấy có 189 người nhiễm covid. 
# Trong khi ở thành phố thì khảo sát trên 1200 người thì thấy có 192 người nhiễm covid
# Đặt ra câu hỏi tỉ lệ nhiễm covid của nông thôn và thành thị có tương đương nhau không ?

# Vì đó là mẫu, sử dụng mẫu để kết luận cho tổng thể #

install.packages("BSDA")
library(BSDA)

prop.test(x=c(189,192),n=c(900,1200),alternative = "two.sided")

# data:  c(189, 192) out of c(900, 1200)
# X-squared = 8.3239, df = 1, p-value = 0.003913
# alternative hypothesis: two.sided
# 95 percent confidence interval:
#   0.0152883 0.0847117
# sample estimates:
#   prop 1 prop 2 
# 0.21   0.16

# KẾT LUẬN: VỚI ĐỘ TIN CẬY 95% TA KHÔNG ĐỦ CĂN CỨ ĐỂ KẾT LUẬN 2 TỶ LỆ VÁO BẰNG NHAU KHÔNG

