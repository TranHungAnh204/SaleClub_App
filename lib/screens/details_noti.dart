import 'package:flutter/material.dart';

class DetailsNotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false, // Tắt nút back mặc định của AppBar
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Căn giữa giữa các phần tử
          children: [
            SizedBox(width: 16), // Khoảng cách 16px từ lề trái đến nút quay lại
            IconButton(
              icon: Image.asset('assets/leftArrow.png'),
              iconSize: 24,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
              child: Text(
                'Thông tin tài khoản',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF040C21),
                ),
              ),
            ),
            SizedBox(width: 16), // Khoảng cách 16px từ nút quay lại đến lề phải
          ],
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            color: Color(0xffeeeeee),
            thickness: 1.0,
            height: 1.0,
          ),
        ),
      ),
      body: SingleChildScrollView( // Thêm SingleChildScrollView để cuộn
        padding: const EdgeInsets.symmetric(horizontal: 16.0), // Căn 16px trái phải
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Căn trái cho các phần tử
          children: [
            SizedBox(height: 8), // Khoảng cách giữa tiêu đề và ngày giờ
            Text(
              "15h35   15/07/2021",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF666D7C), // Màu chữ
              ),
            ),
            SizedBox(height: 16), // Khoảng cách giữa ngày giờ và nội dung
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 16), // Khoảng cách giữa đoạn văn và nội dung tiếp theo
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 16), // Khoảng cách giữa nội dung và ảnh
            Center(
              child: Image.asset(
                "assets/detail_noti.png",
                width: 343,
                height: 342,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
