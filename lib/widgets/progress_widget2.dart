import 'package:flutter/material.dart';

class ProgressWidget2 extends StatelessWidget {
  const ProgressWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tiêu đề "Tiến độ triển khai" sát lề trái cách 16px
          Padding(
            padding: const EdgeInsets.only(left: 16.0), // Padding left 16px
            child: Text(
              "Tiến độ triển khai",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 48), // Khoảng cách giữa tiêu đề và nội dung chính

          // Nội dung ở giữa màn hình
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Hình ảnh PNG ở giữa màn hình
                Image.asset(
                  "assets/trong.png", // Đường dẫn hình PNG 64x64
                  width: 64,
                  height: 64,
                ),
                SizedBox(height: 16), // Khoảng cách 16px

                // Dòng chữ hiển thị khi không có tiến độ nào
                Text(
                  "Chưa có tiến độ triển khai nào được thực hiện",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A4AF),
                    height: 17.76 / 12, // Line height as per specified requirements
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
