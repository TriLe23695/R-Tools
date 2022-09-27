# Ham c() dung de tao 1 vector
x <- c(12,54,13,10,5)

# R can ban
#1. In thong bao ra man hinh
print("Hello")

#2. Khai bao bien
x = 13.8
print(x)

#3. Kiem tra kieu du lieu cua bien so
a = TRUE
print(a)
print(class(a))

#3.1. Viet code khai bao bien y = 15.75 vaf hien thi kieu du lieu
y = 15.75
print(y)
print(class(y))

#4. Thay doi gia tri cua bien so
message = "Hello world"
message <- "Welcome to Aptech"
print(message)

#5. Kieu so phuc z = a +i*b 
z <- 10+2i
print(z)
print(class(z))

#6. Kieu du lieu rong
x <- NULL
print(x)
print(class(x))

#7. Cac phep toan nang cao
#Luy thua
x <- 2^5

#8. Su dung mot so phep toan so hoc 
x <- 4.5
y <- 10L
t <- 4.5 + 10
print(t)

#9. Chuoi va ky tu
c <- 'A'
print(class(c))
s <- "Hello"
print(class(s))

#10.Xuat ra man hinh
name <- "MR.TRI"
print(paste("Hello:",name))

#11. Xuat ra man hinnh voi dinh dang
x <- "Aptech"
sprintf("Hello: %s",x)
y <- 10L
z <- 12.75

sprintf("Sum of %d and %f is %.2f",y,z,y+z)

#12. Ham cat() dung de xuat gia tri bien so ra man hinh voi kieu bien so don gian
name <- "MR.TRI"
cat(name)

#13. De xuat nhanh ra termninal t a dung dung ten bien
mess <- "Message"
mess



#------BIEU THUC VAT LY LOGICAL------
# LA BIEU THUC TRA VE VOI 2 GIA TRI TRUE HOAC FALSE
x <- 10
y <- 23
print(x==y)

z <- 12
print(x<y & y>z)#AND

w <- 54
print(w>x | x>y |z>w)#OR

print(!(w>x | x>y |z>w))#NOT

#---------------------CAU TRUC DIEU KHIEN------------------

x <-100
if ((x %% 2) == 0){
  print("X la so chan")
}else{
  print("X la so le")
}


# Co nhieu dieu kien
x <- 10
if ((x %% 4) == 0){
  print("X Chia 4 du 0")
}else if((x %% 4) == 1){
  print("X chia 4 du 1")
}else{
  print("X chia 4 du 2")
}

# 16.ifesle: Tra ve ket qua la danh sach
marks <- c(7,8,4,5,6,10,9,0,1,2,5,7)
ifelse(marks>5,"PASSED","FAIL")

#17. Vong lap voi for
marks <- c(7,8,4,5,6,10,9,0,1,2,5,7)
for (tmp in marks){
  if ((tmp %% 2)==0){
    print(tmp)
  }
}


#------------VIET HAM TRONG R------------------
#18. Ham khong tra ve gia tri
calculators <- function(a,b){
  print(a+b)
  print(a*b)
  print(a-b)
  print(a/b)
}
calculators(5,10)

#19. Ham co tra ve gia tri
tong <- function (a,b,c){
  return (a^2 + b^2 + c^2)
}

ketqua <- tong(5,10,20)
print(ketqua)