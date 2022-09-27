# Đọc file CSV
df <- read.csv("D:\\Data Analysis\\R-Tools\\Day03\\airtravel.csv")

print(df)

#In ra số cột trong df
cat("Total Columns",ncol(df))

#In ra số dòng trong df
cat("Total rows",nrow(df))

#Số lượng người đi du lịch ít nhất năm 1960
min_1960s <- min(df$X1960)

min_1960s

#Số lượng người đi du lịch lớn nhất năm 1960
max_1960s <- max(df$X1960)

max_1960s

#Lấy những dòng dữ liệu