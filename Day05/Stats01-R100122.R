# HYPOTHESIS (GIẢ THUYẾT, GIẢ THIẾT)
# VD: trường aptech có 20k học viên, bạn quan sát và lấy điểm tb
# ngẫu nhiên của 100 bạn học viên, thì dc giá trị là 7.0.
# từ đó bạn kết luận rằng điểm tb của học viên tại aptech
# là 7.0. Như ở đây câu kết luận này là cho cả trường, nhưng bạn thì
# tính chỉ trên 100 học viên. do đó, đây là giả thuyết (hypothesis)
# vấn đề đặt ra là: ng nghe(khách hàng) kết luận của bạn họ có quyền tin
# tưởng hoặc hoài nghi
# Để có 1 lý luận khách quan nhằm củng cố nhiềm tin vào  
# giả thuyết thì người ta sẽ dùng các công cụ toán học


# Các loại giả thuyết trong thống kê
# 1. simple Hypothesis
# Giả sử ta biết mối quan hệ giữa năm đi học và lương là mối quan hệ đồng biến
# có dạng: lương = 1.5*số năm đi học
# Giả thuyết sau dc gọi là đơn giản: Càng học nhiều thì lương càng cao

# 2. Complex Hypothesis
# Giả sử mối quan hệ về lương còn chịu tác động bởi nhiều yếu tố khác như
# điểm số, số năm đi học, số đồ án, số lần thi lại....
# Giả thuyết: lương càng tăng thì số năm đi học tăng và điểm cao nhưng số 
# lần thi lại ít và làm đồ án nhiều

# 3. Null Hypothesis: Giả thuyết rỗng (sáo rỗng, ko có căn cứ)
# vd: bạn bước vào lớp của con bạn, bạn ước chừng chiều cao trung bình
# của các con là 100cm. và bạn kết luận: "chiều cao trung bình của lớp 
# này là 100cm". Tuy nhiên câu nói này bạn hoàn toàn dựa vào chủ quan
# và ko có bất kì 1 phân tích nào hết. Thì đây dc gọi là Null Hypothesis

# Để xác minh NULL HYPOTHESIS thì bạn cần tính chiều cao trung bình của lớp 
# 1 vài mẫu học sinh trong lớp. Nếu chiều cao trung bình là 100cm thì giả thuyết
# NuLL dc chấp nhận, Ngược lại thì ko

# Người ta thường kí hiệu giả thuyết NULL là H0

# 4. OPPOSED HYPOTHESIS:  Giả thuyết tuyệt đối (ký hiệu là H1)
# Đây dc xem là giả thuyết đối nghịch với giả thuyết H0
# Nếu giả thuyết H1 ko chấp nhận thì giả thuyết H0 dc chấp nhận
# và ngc lại

# SAMPLE và POPULATION
# sample còn gọi mẫu là 1 thành phần (nhóm nhỏ) của tổng thể(population)
# Trong thống kê thì người ta thường sd mẫu để đo lường và kết luận cho tổng thể
# Chính vì vậy cần có 1 công cụ toán học để lý luận xác minh cho việc
# suy diến này

# Do việc làm trên mẫu mà lại đi suy diễn kết quả cho tổng thể nên sẽ dẫn 
# đến các loại sai lầm

# TYPE 1 ERROR (sai lầm loại 1): xảy ra khi giả thuyết h0 đúng, nhưng ta lại
# kết luận sai (tức bác bỏ h0)

# TYPE 2 ERROR (sai lầm loạ 2): xảy ra khi giả thuyết h1 đúng, nhưng ta lại
# kết luận sai (tức là loại bỏ H1)

# xác suất (khả năng) xảy ra sai lầm loại 1 người ta ký kiệu là alpha
# xác suất (khả năng) xảy ra sai lầm loại 1 người ta ký kiệu là beta

# CONFIDENCE INTERVAL (khoảng tin cậy)
# đây là khoảng giá trị mà chưa dc biết trong tổng thể nhưng lại dc tính
# trong mẫu rồi suy diễn ra cho tổng thể
# CONFIDENCE LEVEL (mức tin cậy): là tần số (số lần xuất hiên) của khoảng tin cậy

# Thông thường để kiểm định các suy diễn từ sample sang population
# người ta thường phải giả định sự phân phối của tổng thể thường dựa trên
# các phân phối cơ bản như: 
#     Normal Distribution (phân phối chuẩn - T)
#     Student Distribution (T)
#     Chi-square Distribution
# ......
# Thông thường để kiểm định (tức là đưa ra quyết định bác bỏ hay chấp nhận H0)
# Người ta sẽ bổ sung thêm mức (độ) tin cậy từ 99%, 95%, hoặc 90%
# tương đương với xác suất (khả năng) sai lầm là 1% 5%, 10%
# Để kiểm định giả thuyết theo khuôn mẫu người ta thường dùng các kiểm định
# thuần tuý như các công cụ:
#     1. z-test và T-test: Kiểm định trung bình hoặc tỉ lệ
#     2. ANOVA: Kiểm định trung bình bằng nhau trên các tổng thể

# THÔNG THƯỜNG ĐỂ KẾT LUẬN CHO CÁC KIỂM ĐỊNH NGƯỜI TA THƯỜNG DÙNG
# GIÁ TRỊ P-VALUE (còn gọi là mức ý nghĩa thống kê)
# Nếu p-value lớn hơn mức ý nghĩa(alpha) thì chấp nhận H0
# ngược lại thì ta bác bỏ H0

# BÀI TẬP
# cho dữ liệu fast-food, hãy cho biết số lượng bán hàng có phụ thuộc
# vào món ăn hay ko? Biết rằng mức ý nghĩa là 5%
# GIẢ THUYẾT CỦA ANOVA
# H0: mean(coca) = mean(chicken) = mean(cheese)
# H1: mean(coca) # mean(chicken) # mean(cheese)

# ta sẽ dùng công cụ toán học để chấp nhận hay bác bỏ H0

df <- read.csv("C:\\Users\\APTECH\\Desktop\\fastfood.csv",header = TRUE)
df

r = c(t(as.matrix(df)))
r

f = c("Coke","Chicken","Cheese")
k = 3 # 3 cột
n = 6 # 6 dòng

tm = gl(k,1,n*k,factor(f))
tm

av = aov(r~tm)
summary(av)

# Dựa trên kết quả của p-value = 0.112 > 0.05 (tức 5%)
# do đó ta kết luận chấp nhận H0
# kết luân phân tích dữ liệu: số lượng bán hàng ko phụ thuốc loại thức ăn
# lưu ý: ANOVA trong R mặc định mức ý nghĩa 5%
# ANOVA phía trên gọi là ANOVA 1 chiều

df1 <- read.csv("C:\\Users\\APTECH\\Desktop\\hocvien.csv",header = TRUE)
df1

r = c(t(as.matrix(df1)))
r

f = c("Software","DataAnalysis","Networking","Multimedia")
k = 4 # 4 cột
n = 11 # 11 dòng

tm = gl(k,1,n*k,factor(f))
tm

av = aov(r~tm)
summary(av)
# Dựa trên kết quả của p-value = 0.039 < 0.05 (tức 5%)
# do đó ta kết luận ko chấp nhận H0
# kết luân phân tích dữ liệu: số lượng học viên phụ thuốc vào ngành học
