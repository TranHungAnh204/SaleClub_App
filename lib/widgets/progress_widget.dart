import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Tiêu đề
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), // Khoảng cách 16px
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tiến độ triển khai",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Xem tất cả",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFF37021), // Màu #F37021
                    ),
                  ),
                  SizedBox(width: 6), // Khoảng cách 6px giữa chữ và mũi tên
                  Image.asset(
                    "assets/rightArrow.png",
                    width: 8.08,
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10), // Khoảng cách giữa tiêu đề và thẻ
        // Thẻ có thể lướt ngang
        SizedBox(
          height: 180, // Chiều cao cho thẻ
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              buildCard("Trễ 2 ngày", "Nguyễn Bảo Ngọc", "1 Phạm Văn Bạch, Yên Hoà, Cầu Giấy, Hanoi"),
              buildCard("Đã hoàn thành", "Nguyễn Quang Hải", "17 Duy Tân, Dịch Vọng Hậu, Cầu Giấy, Hanoi"),
              buildCard("Đã hoàn thành", "Nguyễn Văn B", "456 Đường XYZ, Quận 2, TP.HCM"),
              // Thêm nhiều thẻ nếu cần
            ],
          ),
        ),
      ],
    );
  }

Widget buildCard(String status, String name, String address) {
  return Container(
    width: 160, // Chiều rộng của từng thẻ
    height: 180, // Chiều cao của từng thẻ
    margin: EdgeInsets.symmetric(horizontal: 5), // Khoảng cách giữa các thẻ
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white, // Màu nền của thẻ
      borderRadius: BorderRadius.circular(8), // Bo góc cho card
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05), // Màu bóng nhẹ hơn
          spreadRadius: 1, // Giảm độ lan rộng
          blurRadius: 3, // Giảm độ mờ
          offset: Offset(0, 2), // Độ dời bóng
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center, // Căn giữa các thành phần theo chiều dọc
      crossAxisAlignment: CrossAxisAlignment.center, // Căn giữa các thành phần theo chiều ngang
      children: [
        // Icon Tiến độ triển khai
        Image.asset(
          "assets/tiendotrienkhai.png", // Icon tiến độ triển khai
          width: 45,
          height: 45,
        ),
        SizedBox(height: 16), // Khoảng cách 16px giữa icon và trạng thái
        // Trạng thái
        Row(
          mainAxisSize: MainAxisSize.min, // Giúp row co lại theo kích thước nội dung
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8), // Thêm khoảng cách bên trái và bên phải
              decoration: BoxDecoration(
                color: status == "Đã hoàn thành" ? Color(0xFF00D172) : Color(0xFFE22119), // Màu sắc tùy thuộc vào trạng thái
                borderRadius: BorderRadius.circular(4), // Bo góc nhỏ hơn
              ),
              alignment: Alignment.center, // Căn giữa nội dung
              child: Text(
                status,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: Colors.white, // Chữ màu trắng
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15), // Khoảng cách 15px giữa trạng thái và tên
        Text(
          name,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Color(0xFF11192E), // Màu #11192E
          ),
        ),
        SizedBox(height: 8), // Khoảng cách 8px giữa tên và địa chỉ
        Text(
          address,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xFFA0A4AF), // Màu #A0A4AF
          ),
          textAlign: TextAlign.center, // Căn giữa địa chỉ
        ),
      ],
    ),
  );
}


}