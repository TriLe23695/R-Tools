#------PARK 1: ĐỌC DỮ LIỆU TỪ FILE EXCEL
#Bước 1: Install package xlsx
install.packages("xlsx")
#Bước 2: Import thư viện
library("xlsx")

df <-read.xlsx("D:\\Data Analysis\\R-Tools\\Day03\\sales.xlsx",sheetIndex = 1,
               rowIndex = 1:10,
               colIndex = 1:6)

df

#--------PART 2: GHI DỮ LIỆU TỪ DATAFRAME XUỐNG FILE EXCEL
dfhocsinh <- data.frame(
  Name = c("Peter","Henry","Simon","Jack","Linda"),
  Age = c(22,32,21,45,26),
  Score = c(7,9,5,6,10)
)

dfhocsinh 
write.xlsx(dfhocsinh,"D:\\Data Analysis\\R-Tools\\Day03\\hocsinhexcel.xlsx", 
           sheetName = "student in class")
