# Bài toán: Công ty muốn nâng cao trình độ ngoại ngữ của nhân viên, nên nhờ 
# trung tâm ABC đào tạo. Công ty đánh giá trình độ tiếng anh sau khi nhân viên hoàn tất khoá học 
# tại trung tâm bằng điểm TOEIC của 10 nhân viên thì thấy rằng 
# Trước khi học tại trung tâm thì điểm là : 390,430,410,320,370,400,420,400,370,378
# Sau khi học tại trung tâm thì điểm là : 420,450,420,430,400,440,400,430,410,400
# Hỏi việc học tại trung tâm có hiệu quả không để công ty có quyết định đầu tư cho toàn bộ 
# nhân viên

install.packages("BSDA")
library(BSDA)


data_before <- c(390,430,410,320,370,400,420,400,370,378)
data_after <- c(420,450,420,430,400,440,400,430,410,400)

t.test(x=data_before,y=data_after,paired=TRUE,alternative="greater")
# Việc đào tại tại trung tâm là có hiệu quả 