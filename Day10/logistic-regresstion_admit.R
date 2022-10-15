# URL: https://www.r-bloggers.com/2021/04/logistic-regression-r-tutorial/

# Step 1: Load data
mydata <- read.csv("D:/Data Analysis/R-Tools/Day10/binary.csv", header = T)
mydata

# Step X: Xử lý dữ liệu và EDA dữ liệu

# Step 2: Split into test and train
set.seed(1234)
ind <- sample(2, nrow(mydata), replace = T, prob = c(0.8, 0.2))
train <- mydata[ind==1,]
test <- mydata[ind==2,]

# Step 3: Build model on train dataset
mymodel <- glm(admit ~ gpa+gre + rank, data = train, family = 'binomial')
summary(mymodel)

# Step 4: Evaluation: Train dataset
p1 <- predict(mymodel, train, type = 'response')
pred1 <- ifelse(p1>0.5, 1, 0)
tab1 <- table(Predicted = pred1, Actual = train$admit)
tab1

# Step 4.1: Evaluation: Test dataset
p2 <- predict(mymodel, test, type = 'response')
pred2 <- ifelse(p2>0.5, 1, 0)
tab2 <- table(Predicted = pred2, Actual = test$admit)
tab2

