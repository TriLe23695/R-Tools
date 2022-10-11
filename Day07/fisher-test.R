#kiểm định Fisher-test: kiểm định 2 biến định tính, mẫu nhỏ < 30
#H0: Hai biến này không có quan hệ
#dựa vào p-value

ID <- seq(1:30)
Age <- sample(c("0-15", "16-29", "30-44", "45-64", "65+"), 30, replace = TRUE)
Sex <- sample(c("Male", "Female"), 30, replace = TRUE)
Country <- sample(c("England", "Wales", "scotland", "N.Ỉeland"), 30, replace = TRUE)
Health <- sample(c("Poor", "Average", "Good"), 30, replace = TRUE)

df <- data.frame(Age, Sex, Country, Health)
head(df)

#cross-tab -> tần số, tần suất số lần xuất hiện
cross_table = table(df$Age, df$Sex)
cross_table

#fisher test:
test <- fisher.test(df$Age, df$Sex)
test

#p-value = 0.4207 > 0.05 -> chấp nhận giả thiết

# kiểm định xem
# giới tính và sức khoẻ có quan hệ không
test1 <- fisher.test(df$Sex, df$Health)
test1

# sức khoẻ và độ tuổi có quan hệ không
test2 <- fisher.test(df$Health, df$Age)
test2




