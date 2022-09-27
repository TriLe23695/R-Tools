# Đọc file CSV
df <- read.csv("D:\\Data Analysis\\R-Tools\\Day03\\airtravel.csv")

print(df)

#In ra số cột trong df
cat("Total Columns",ncol(df))

#In ra số dòng trong df
cat("Total rows",nrow(df))

#Số lượng người đi du lịch ít nhất năm 1960s
min_1960s <- min(df$X1960)

min_1960s

#Số lượng người đi du lịch lớn nhất năm 1960s
max_1960s <- max(df$X1960)

max_1960s

#Lấy những dòng dữ liệu người đi du lịch lớn hơn 400 ở năm 1960s
gtt_400_1960s <- subset(df,X1960>400)
gtt_400_1960s

#-----------WRITE FILE IN R--------------
dfhocsinh <- data.frame(
  Name = c("Peter","Henry","Simon","Jack","Linda"),
  Age = c(22,32,21,45,26),
  Score = c(7,9,5,6,10)
)

dfhocsinh 
write.csv(dfhocsinh,"D:\\Data Analysis\\R-Tools\\Day03\\hocsinhdb.csv")
