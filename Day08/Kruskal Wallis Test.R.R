
# Giống như Annova nhưng không cần phân phối chuẩn
# Dùng cho các biến định lượng
# H0; Các biến sô không có mối quan hệ


airquality

test <- kruskal.test(ozone ~ month,data = airquality)
test