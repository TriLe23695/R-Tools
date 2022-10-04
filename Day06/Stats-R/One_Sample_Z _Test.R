#-------------- Z-Test trên 1 biến số------------------
# Mục đích: Kiểm định giả thuyết về giá trị trung bình

# Yêu cầu: Số lượng mẫu phải lớn hơn 30 mẫu và là phân phối chuẩn
# Bài toán:
# H0: trung bình mẫu = giá trị cần kiểm định

install.packages("BSDA")
library("BSDA")
# Bài toán: công ty cần kinh doanh trà sữa tại 1 khu vực
# Giả sử rằng công ty biết được độ lệch chuẩn của số tiền mà sinh viên khu vực đó bỏ 
# ra hàng tháng để mua trà sữa là 100k(VND). Công ty nhận thấy rằng cần điều tra xem 
# có phải chi tiêu trung bình hàng tháng cho trà sữa của sinh viên khu này là 610k(VND) 
# hay không để có chiến lược kinh doanh


# Bước 1: CÔNG TY CẦN THU THẬP DỮ LIỆU CỦA TỐI THIỂU 30 MẪU DỮ LIỆU TỪ SINH VIÊN
# MÀ SINH VIÊN CHI RA ĐỂ MUA TRÀ SỮA HÀNG THÁNG

data <- c(670,730,540,670,480,800,690,560,620,700,660,640,710,650,490,800,600,
          560,700,680,550,580,700,705,690,520,650,660,790)

# Bước 2: CHỌN MỨC Ý NGHĨA ALPHA = 0.1 HOẶC 0.05 HOẶC 0.01
# SẼ TƯƠNG ƯNG VỚI ĐỘ TIN CẬY LÀ 90% 95% VÀ 99%
# THÔNG THƯỜNG NGƯỜI TA CHỌN MỨC TIN CẬY LÀ 95% TƯƠNG ĐƯƠNG VỚI ALPHA = 0.05

# Bước 3: KIỂM TRA XEM DỮ LIỆU PHÂN PHỐI CÓ GẦN PHÂN PHỐI CHUẨN HAY KHÔNG
qqnorm(data)
qqline(data)

# Nếu là phân phối chuẩn thì ta thực hiện tiếp các bước sau
# Nếu không phải là phân phối chuẩn: có 2 giải pháp:
    # 1. Điều chỉnh dữ liệu
    # 2. Lấy nhiều dữ liệu hơn và  giả định là phân phối chuẩn
    # (3). Tìm phương pháp khác

# Bước 4: THỰC HIỆN Z-TEST 

z.test(x=data,mu=610,alternative = "two.sided",sigma.x = 100)

# OUTPUT:   One-sample z-Test
# data:  data
# z = 2.0519, p-value = 0.04018
# alternative hypothesis: true mean is not equal to 610
# 95 percent confidence interval:
# 611.7078 684.4991
# sample estimates:
# mean of x 
# 648.1034 


# P-Value: bác bỏ giả thuyết hay chấp nhận giả thuyết

# KẾT LUẬN: TRUNG BÌNH CHI TIÊU CHO TRÀ SỮA HÀNG THÁNG CỦA SINH VIÊN KHÁC 610K

# LÝ THUYẾT CỦA THỐNG KÊ (PHÂN TÍCH) SUY DIỄN
# PHẢI XÁC ĐỊNH
# 1. H0
# 2. MỨC Ý NGHĨA ALPHA
# 3. P-VALUE
# QUY TẮC SUY DIỄN
# NẾU P-VALUE < ALPHA ---> REJECT H0
# NẾU P-VALUE >= ALPHA ---> ACCEPT H0