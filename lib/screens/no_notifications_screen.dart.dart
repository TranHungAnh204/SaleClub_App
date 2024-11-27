import 'package:flutter/material.dart';

class NoNotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: _buildNoNotifications(),
    );
  }

  Widget _buildNoNotifications() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Căn trái cho tiêu đề
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0), // Thêm khoảng cách xung quanh
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Căn trái
            children: [
              Text(
                "Thông báo",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 8), // Khoảng cách giữa tiêu đề và ngày
              Text(
                "Hôm nay",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Căn giữa theo chiều dọc
              children: [
                Container(
                  width: 95,
                  height: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Color(0xfff0f0f0),
                  ),
                  child: Center(
                    child: Image.asset("assets/no-noti.png", width: 50, height: 50), // Ảnh thông báo
                  ),
                ),
                SizedBox(height: 16), // Khoảng cách giữa ảnh và thông báo
                Text(
                  "Không có thông báo nào",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF666D7C), // Màu chữ
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
