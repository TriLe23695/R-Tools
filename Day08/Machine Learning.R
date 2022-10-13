# Bước 1: Xác định các input và output
# Bước 2: Sử dụng model thích hợp 
# Bước 3: Đánh giá mô hình


# -------------PHÂN LOẠI VỚI MÔ HÌNH--------------
#LOGISTIC REGRESSION

mtcars

# Hãy phân loại am dựa trên hp và wt
# Do am chỉ có 2 giá trị phân loại là 0 và 1 nên ta gọi đây là phân loại nhị phân
# Kỹ thuật máy học cơ bản nhất để giải quyết bài toán phân loại nhị phân 
# là dùng logistic regression
mymodel = glm(formula = am ~ hp + wt, data = mtcars, family = binomial)

summary(mymodel)

newdata = data.frame(hp=120, wt=2.8)

predict(mymodel, newdata, type = "response")