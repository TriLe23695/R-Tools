
# Bài toán
# Để cải thiện sự thoải mái trong giờ làm việc nhằm nâng cao chất lượng 
# công việc, công ty tiến hành điều tra trên 1500 nhân viên thì thấy rằng có 
# 150 nhân viên trả lời rằng sau 16h30 thì sự tập trung cho công việc giảm
# Hỏi có phải 75% nhân viên cảm thấy làm việc sau 16h30 thì không hiệu quả

install.packages("BSDA")
library(BSDA)

prop.test(x=1150,n=1500,p=0.75,alternative = "greater")

# KẾT LUẬN: Chấp nhận giả thuyết H0 <---> có đủ căng cứ để nói rằng tỉ lệ nhân viên 
# cảm thấy làm việc không hiệu quả sau 16h30 là 75%