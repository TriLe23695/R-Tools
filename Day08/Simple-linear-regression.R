
# Load Data

df <- read.csv("D:/tri2/Day08/sale.csv")
df
# Phân tích tác động của chi phí sản xuất đến lợi nhuận
# Lợi nhuận = f(chi phí)
# Lợi nhuận = A0 + A1*chi phí


#A0: Interception
#A1: Coefficient

model = lm(LOINHUAN ~ CHIPHISX, data = df)

coff <- coefficients(model)
coff


# Lợi nhuận = 3.4655 + 0.4751*chi phí


# Nếu chi phí là 5.6 thì lợi nhuận là bao nhiêu
chiphi = 5.6
loinhuan = coff[1] + coff[2]*chiphi
loinhuan

#[1] và [2]: các hệ số A0 và A1

# R-Square: cho biết mức độ giải thích của biến độc lập đối với biến
# phụ thuộc

summary(model)$r.squared

# Mức độ giải thích mô hình: yếu (chỉ được 27%). Trên 50% là tốt 
summary(model)

# Kiểm tra mối quan hệ giữa biến độc lập và biến phụ thuộc
# Căn cứ vào p-value
  # p- value < 0.05:Bác bỏ giả thuyết H0: biến độc lập và
  # biến phụ thuộc không ảnh hưởng gì tới nhau
  # => các biến có ảnh hưởng đến nhau
# Dự báo khoảng tin cậy 95%
predict(model,data.frame(CHIPHISX=5.5),interval = 'confidence')

# Residual box
res <- resid(model)
plot(df$CHIPHISX,res,ylab="Residual",xlab="Chi phí sản xuất",
     main="Biểu đồ phần dư")
abline(0,0)
  # Là trị tuyệt đối giữa giá trị thực tế và giá trị dự báo
  # Mô hình tốt hay là không: các giá trị phần dư càng nằm gần 
  # đường kiểm định càng tốt

# Kiểm định về độ lệch chuẩn của phần dư
resstd = rstandard(model)
qqnorm(resstd,ylab = 'Lệch chuẩn phần dư',
       xlab = "Normal Score",
       main = 'Biểu đồ kiểm định độ lệch chuẩn của phần dư')
qqline(resstd)

  # Nếu như kiểm định độ lệch chuẩn phần dư mà không 
  # theo phân phối chuẩn thì nếu dữ liệu có kích thước nhỏ 
  # thì suy diễn hồi quy sẽ không đáng tin cậy (Dưới 30)