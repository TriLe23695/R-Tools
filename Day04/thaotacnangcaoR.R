#-------------Các KIẾN THỨC THỐNG KÊ NÂNG CAO TRONG R----------------

#1. Tự phát sinh dữ liệu trong R
x <- seq(6,20, by=0.5)
x

#2. Sử dụng hàm rep để tạo ra vector trong R bằng cách lặp lại giá trị của phần tử
x <- rep(1,10)
x
#3. Các phép toán có thể áp dụng trực tiếp trên vector

x <- c(2,4,6,8,10)
tongbp <- sum(x^2)
tongbp

#4. Tạo ra các số ngẫu nhiên bất kỳ
x <- sample(0:9,10,replace=TRUE) # Cho phép lấy trùng
x

#5. Tạo ra vector có 20 phần tử từ 0 cho đến 9. Hãy tính trung bình và độ lệch chuẩn các giá trị trên
x <- sample(0:9,20,replace=TRUE)
x

mx <- mean(x)
stdx <- sd(x)
mx
stdx

#6. Sinh ra dữ liệu ngẫu nhiên theo quy luật phân phối chuẩn 
#Với quy luật phân phối chuẩn thì cần cung cấp 2 tham số
#Tham số 1: trung bình
#Tham số 2: độ lệch chuẩn

x <- rnorm(20,mean=6,sd=1.5)
x

#7. Cho biết điểm số của học sinh là từ 0 đến 10 (số thực)
# Sau một quá trình thu thập dữ liệu, người ta chứng minh được rằng 
# điểm số của học sinh ở Aptech được tuân theo quy luật
# của phân phối chuẩn với giá trị trung bình là 6.5 và độ lệch chuẩn là 1.5
# Hãy tính xác suất để một học sinh sẽ có điểm là 8.0 trong kỳ thi tốt nghiệp

pdiem8 <- dnorm(8.0, mean=6.5,sd=1.5)
pdiem8

#8. Tiếp theo bài 7: tính sác xuất để một 1 hs đạt điểm tối thiểu là 9 trong kỳ thi tốt nghiệp
# sắp tới
ptoithieu9 <- 1-pnorm(9.0, mean = 6.5, sd = 1.5)
ptoithieu9

#9. R hỗ trợ rất tốt trong các kỹ thuật xử lý ma trận
# Giả sử có ma trận A 3 dòng 2 cột như sau:
# [1 4]
# [2 5]
# [3 6]

A <- matrix(c(1,2,3,4,5,6),nrow = 3)
A

# Transpose
B <- t(A)
B

#Nhân ma trận
C = A%*%B
#Định thức của C
dinhthuc <- det(C)
C

#Giá trị riêng (đặc trưng của ma trận)
dactrung <- eigen(C)
dactrung

# Giải hệ phương trình tuyến tính bậc nhất 2 ẩn
# 1*x +1*y = 3
# 3*x +1*y = 7
# Hãy tìm x và y thoả mãn hệ phương trình trên
# Ý TƯỞNG: Xem phần hệ số ở vế trái thành ma trận A(2x2) và hệ số vế phải là ma trận B(2x1)
# Như vậy ta có cách biểu trong ma trận như sau
# [1 1]
# [3 1]
# và [3]
#    [7]

A <- matrix(c(1,1,3,1),nrow = 2,byrow = TRUE)
B <- matrix(c(3,7), nrow = 2)
A
B

nghiempt <- solve(A)%*%B
nghiempt

#11. KẾT NỐI CSDL TRONG R
install.packages("RMySQL")
library("RMySQL")
driver <- dbDriver("RMySQL")
connection <- dbConnect(driver, host="localhost",dbname="qlnv",user="mrnam",
                        password="aB123456")
# Viết câu truy vấn lấy dữ liệu
ketquatruyvan <-dbSendQuery(connection,"select * from customer order by id desc limit10")
dulieu <- fetch(ketquatruyvan,1)
dulieu

#---------PHÂN TÍCH HỒI QUY------------
# Bài toán: hãy phân tích tác động của thu nhập theo chi tiêu dùng hàng tháng
# Biến độc lập: tiêu dùng
# Biến phụ thuộc: thu nhập
# Từ đó ta có hàm số thu nhập = f(tiêu dùng)
# Ở đây ta có f là hàm số hồi quy tuyến tính nên có dạng như sau:
# thu nhập = A*tiêu dùng + B
# Mục đích là đi tìm các giá trị A và B

tieudung <- c(18:29)
thunhap <- c(76.1,77,78.1,78.2,78.8,79.7,79.7,81.1,81.2,81,82.8,83.5)
plot(tieudung,thunhap)

ketquahoiquy <- lm(thunhap~tieudung)
ketquahoiquy
abline(ketquahoiquy)

#KẾT QUẢ: thunhap = 0.635 * tieudung + 65.3216
# Dự báo kết quả
# Giả sử tháng 10 nhà tính tiêu khoảng 35 triệu thì thu nhập tháng 10 sẽ là bao nhiêu
giatrimoi <- data.frame(tieudung = 35)
dubaothunhap <- predict(ketquahoiquy,giatrimoi)
dubaothunhap

# BÀI TẬP VỀ NHÀ 
# Cho biết chiều cao trung bình của thanh niên Việt Nam hiện nay là: 168 cm
# Độ lệch chuẩn là 4.6cm
# Người ta chứng minh được rằng chiều cao của thanh niên Việt Nam tuân theo
# quy luật phân phối chuẩn
# 1. Vẽ đồ thị phân phối chuẩn cho bài toán trên 
# 2. Hãy tìm xác xuất để 1 đứa trẻ được sinh ra có chiều cao tối thiểu là 175cm


# Cho dữ liệu bán hàng trong file sale.csv, hãy xây dựng mô hình hồi quy tuyến tinh
# để phân tích tác động của giá trị mặt hàng 
# A B C đến mặt hàng D
# 2. Giả sử biết giá trị mặt hàng của A B C là 6.5 7.5 5.7 thì giá trị mặt hàng D là bao nhiêu?