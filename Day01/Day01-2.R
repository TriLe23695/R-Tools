
#PART01: KIEU DU LIEU CHUOI
# Chuoi la day cac ky tu

#1. Khai bao
s <- "Hello"
ss <- "Hello"
s
ss

#2. Tim so ky tu trong chuoi (do dai cua chuoi)
str <- "Hello"
nchar(str)

#3. Noi chuoi
mess1 <- "Hello"
mess2 <- "Aptech"
paste(mess1,mess2)

#4. So sanh 2 chuoi
print(mess1 == mess2)

#5. Doi sang Upercase va Lowercase
upMess1 <- toupper(mess1)
lowMess2 <- tolower(mess2)
upMess1
lowMess2

#PART02: VECVTOR: LA DANH SACH CUA NHIEU PHAN TU
#1. Tao vector chua nhieu phan tu bang ham c()
emps <- c("Nam","Tu","Lan","Hung","Tam") #Moi phan tu duoc danh chi so tu 1
emps

#2. Lay phan tu tai chi so (index)
emps [2]

#3. Gan moi gia tri cho phan tu
emps[4] <- "Mai"
emps

#4. Tao nhanh vector chua cac so nguyen theo thu tu
nums <- 10:25
nums

#5. Lap nhieu lan so phan tu trong vector

numsx2 <- rep(nums, times =2)
numsx2

#6. Dem so luong phan tu trong vector
nums <- c(2,4,6,8)
length(nums)

#PART03: MATRIX
#La ma tran co dong va cot
#1. Tao ma tran
m1 <- matrix(c(2,4,6,8,10,12),nrow = 2,ncol = 3,byrow = TRUE) #byrow: lay theo dong
m1

#2. Truy xuat ma tran
#Do ma tran duoc tao boi cac dong va cot nen khi muon truy xua 1 phan tu thi ta can cung cap vi tri dong va cot
m1 <- matrix(c(2,4,6,8,10,12),nrow = 2,ncol = 3,byrow = TRUE)
m1[2,2]

#3. Truy xuat theo dong
m1[1,]

#4. Truy xuat theo cot
m1[,2]

#5. Truy xuat theo nhom dong
m2 <- matrix(tmp <- 1:15,nrow = 3,ncol = 5,byrow = TRUE) #byrow: lay theo dong
m2

m2[c(1,3),] #Lay du lieu dong 1 va dong 3
m2[,c(2,4,5)] #Lay du lieu cot 2 4 5

#6. Thay doi gia tri cho phan tu trong matrix
m1 <- matrix(c(2,4,6,8,10,12),nrow = 2,ncol = 3,byrow = TRUE)
m1[2,3] <- 100
m1

#7. Ket hop 2 ma tran (yeu cau ma tran phai cung so chieu: cung so cot va dong)
m1 <- matrix(tmp1 <- 1:4,nrow = 2,ncol = 2,byrow = TRUE) #byrow: lay theo dong
m2 <- matrix(tmp2 <- 5:8,nrow = 2,ncol = 2,byrow = TRUE)
mb <- cbind(m1,m2)
mb

#8. Kiem tra phan tu co trong ma tran hay khong
m1 <- matrix(c(2,4,6,8,10,12),nrow = 2,ncol = 3,byrow = TRUE) #byrow: lay theo dong
10 %in% m1
50 %in% m1