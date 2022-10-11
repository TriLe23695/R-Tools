#1. Problem
#2. Gather Data
#3. Data Preprocessing: EDA: Missing, Error, Abnormal, Visualization
#4. Description (what happend): BI
#5. Diagnostic (why happend): Test (Annova, Fisher)
#6. Prediction


#------------------- Mann-Whitney-Wilcoxon Test
# Mục tiêu: Kiểm định xem là các biến số có độc lập không
# Không cần phải giả định dữ liệu là phân phối chuẩn
# H0: các biến số không có mối quan hệ (tức là độc lập)

library(datasets)
data(mtcars)
test <- wilcox.test(gear ~ am, data = mtcars) 
test


