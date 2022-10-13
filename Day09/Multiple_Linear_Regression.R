
# Cần đánh giá tác động của các X(i) đến biến Y
# Multiple_Linear_Regression: 
    # Y = A0 + A1*X1 + A2*X2+ ... + An*Xn
# --> Dữ liệu ---> Tìm A0 A1 A2 ... An

# Mô tả dữ liệu stackloss
# Stack loss: Hao phí
# Air.Flow (Cooling Air Flow)
# Water.Temp (Water Temperature)
# Acid.Conc. (Acid Concentration)
stackloss

# Bài toán: Đánh giá tác động của tiêu hao về 
# Air.Flow, Water.Temp, Acid.Conc đến stackloss(sự hao phí)

# Build model multiple linear regression
stackloss.lm = lm(stack.loss ~ Air.Flow + Water.Temp + Acid.Conc., data = stackloss)

# Khám phá mô hình
summary(stackloss.lm)$r.squared

# Adj. R-squared
summary(stackloss.lm)$adj.r.squared

# Summary mô hình
summary(stackloss.lm)

# Giá trị p-value nhỏ hơn 0.05 ---> các biến số có mối quan hệ hồi quy

#  Pr: H0: Không có ý nghĩa (Không đóng vai trò về mặt thống kê) thống kê khi tham gia vào mô hình


#
newdata = data.frame(Air.Flow=72,
                     Water.Temp=20,
                     Acid.Conc.=85)
# Prediction of the mean response
predict(stackloss.lm,newdata, interval = "confident")

# Prediction of
predict(stackloss.lm,newdata, interval = "predict")
