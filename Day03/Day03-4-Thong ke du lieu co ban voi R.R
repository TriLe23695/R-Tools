
# Bước 1: Đọc dữ liệu
df <- read.csv("D:\\Data Analysis\\R-Tools\\Day03\\sales.csv")
df

# Bước 2: Lấy thông tin cơ bản của dữ liệu
#Dùn dim() để lấy thông tin chiều của dataset
cat("Dimension:",dim(df))
cat("\nColumns:",ncol(df))
cat("\nRows:",nrow(df))
cat("\nName of Variables:",names(df))

#Bước 3: Một số hàm thống kê cơ bản trên cột mà lựa chọn nghiên cứu:

df$Unit.Cost
sort(df$Unit.Cost)
max(df$Unit.Cost)
min(df$Unit.Cost)
mean(df$Unit.Cost)
median(df$Unit.Cost)
mode(df$Unit.Cost)
quantile(df$Unit.Cost,0.8)   # Lấy phân vị thứ 80%
quantile(df$Unit.Cost,c(0.7,0.5,0.2,0.8,0.9)) 

# Bước 4: Người ta thường dùng những thống kê cơ bản có sẵn được xây dựng
#SUMMARY

summary(df$Unit.Cost)

#ĐIỀU QUAN TRỌNG KHI ĐỌC BẢNG KẾT QUẢ THÌ NGƯỜI PHÂN TÍCH DỮ LIỆU HIỂU GÌ
#BẢNG KẾT QUẢ
#  Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#1.29    3.99    4.99   20.31   17.99  275.00 