#-----------TRỰC QUAN HOÁ DỮ LIỆU VỚI R------------
#1. Biểu đồ Bar
  #Giả sử nhiệt độ của 7 ngày
nhietdo <- c(22,27,26,23,26,28,30)

bieudo <- barplot(nhietdo,main="Biểu đồ nhiệt độ",
                  xlab = "Ngày",
                  ylab = "Nhiệt độ",
                  names.arg = c("Mon","Tue","Wed","Thu","Fri","Sat","Sun"),
                  col = "blue",
                  density = 20,
                  horiz = TRUE)
print(bieudo)
#2. Biểu đồ Histogram. Cho biết xác suất xảy ra trên khoảng giá trị
bieudohist <- hist(nhietdo,main = "Biểu đồ Hist",
                   xlab = "Nhiệt độ",
                   ylab = "Tần số",
                   col = "red",
                   xlim = c(10,40),
                   ylim = c(0,10))
#3. Biểu đồ pie: Biểu diễn phần trăm
doanhso <- c(500,450,600,700,400)
library(plotrix)
bieudopie3d <- pie3D(doanhso,
                 main = "Tỉ lệ bán hàng",
                 labels = c("Milk","Food","Pepsi","Fish","Vegetable"),
                 col = c("red","orange","pink","green","purple"))
# Install Tool trong R: Tools  -> Install Package -> plottrix


df <- data.frame(Name=c("Nam","Hùng","Mai"),
                 Age=c(32,35,27),
                 Salary=c(1500,2000,1200),
                 Vote=c(TRUE,FALSE,FALSE))
df2 <- data.frame(Name=c("Long","Lan"),
                  Age=c(22,55),
                  Salary=c(1000,2500),
                  Vote=c(FALSE,FALSE))
df3 <- rbind(df,df2)
df4 <- data.frame(Hobby=c("Tennis","Football","Piano","Swimming","Football"))
df5 <- cbind(df3,df4)
head(df5)

bieudoboxplot <-boxplot(Age~Vote,data=df5,
                        ylab="Tuổi",
                        xlab="Biến số",
                        col = "orange")

bieudoboxplot <-boxplot(df5$Age,
                        ylab="Tuổi",
                        xlab="Biến số",
                        col = "orange")
bieudoboxplot <-boxplot(Age~Vote,data=df5,
                        ylab="Tuổi",
                        xlab="Biến số",
                        col = "orange",
                        notch= TRUE)
#5. Biểu đồ Strip
stripchart(df5$Age)
  # Các biến có cùng scale
danhsach <- list("Age"=df5$Age,"Salary"=df5$Salary)
stripchart(danhsach)

#6. Biểu đồ Saccter (biểu đồ mặc định trong R)
plot(2,4)
x <- c(2,4,6,8)
y <- c(5,7,9,6)
plot(x,y,xlim = c(0,10),ylim = c(0,10))
plot(1:10,xlim = c(0,15),ylim = c(0,15))
plot(1:10,xlim = c(0,15),ylim = c(0,15),type = "b")

x <- seq(-pi,pi,0.1) # Sinh ra giá trị từ đâu đến đâu và bước nhảy
y <- sin(x)
plot(x,y,type="b")

  # Sinh ra dãy giá trị x từ -5 đến 5, bước nhảy là 0.2
  # Vẽ đồ thị y = 2*x^3+1
x <- seq(-10,10,0.2) # Sinh ra giá trị từ đâu đến đâu và bước nhảy
y <- 2*x^3+1
plot(x,y,type="b")
#8. Hệ thống màu trong R
color()
barplot(nhietdo,col = rainbow(7))

barplot(nhietdo,col = heat.colors(7))

barplot(nhietdo,col = terrain.colors(7))

barplot(nhietdo,col = topo.colors(7))

barplot(nhietdo,col = c("#AE4371","#000044","#0000CC",
                        "coral","#99FF66","#FF99FF","#FF0033"))

