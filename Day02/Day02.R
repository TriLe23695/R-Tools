
#------------R LEVEL TRUNG CẤP----------------

# CÁC ĐỐI TƯỢNG CHỨA NHIỀU PHẦN TỬ TRONG R
#REVIEW
#1. R String : Chuỗi các ký tự
#2. R Vector: Chứa các phần tử có cùng kiểu dữ liệu
#3. R Matrix: Chứa các phần tử theo dạng 2 chiều (dòng và cột)
#4. R List: Chứa danh sách các phần tử có thể khác kiểu dữ liệu 
danhsach <- list(24,27.5,"Hello",TRUE,"World")
danhsach[1]
danhsach[4]
  # TƯƠNG TỰ NHƯ VECTOR
#5. R Array: Là cấu trúc có khả năng chứa các phần tử, dưới dạng nhiều hơn 2 chiều
arr <- array(c(1:12),dim=c(2,1,3,2,1))
print(arr)
print(length(arr))
#6. DataFrane: Lưu dữ liệu dưới dạng văn bản như python
df <- data.frame(Name=c("Nam","Hùng","Mai"),
                 Age=c(32,35,27),
                 Salary=c(1500,2000,1200),
                 Vote=c(TRUE,FALSE,FALSE))

print(df)
  # Truy xuất dữ liệu qua cột
df[["Name"]]
df[1]
df$Name
  # Truy xuất dữ liệu qua dòng
df[2,3]
df[2,]
  #Ghép thêm dòng
df2 <- data.frame(Name=c("Long","Lan"),
                 Age=c(22,55),
                 Salary=c(1000,2500),
                 Vote=c(FALSE,FALSE))
df3 <- rbind(df,df2)
df3
  # Ghép thêm cột
df4 <- data.frame(Hobby=c("Tennis","Football","Piano","Swimming","Football"))
df5 <- cbind(df3,df4)
df5
print(length(df5)) #Đếm xem có bao nhiêu dòng
#7. R Factor: Lưu trữ các dữ liệu dạng phân loại (định tính)
  # Cách thao tác, truy xuất ... giống như vector, list
fa <- factor(c("Single","Married","Divorced","Separate"))
print(fa)

