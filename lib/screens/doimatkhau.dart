import 'package:flutter/material.dart';
import 'package:saleclub/screens/profile_screen.dart';
import 'package:saleclub/screens/thongtintaikhoan.dart';
import 'package:saleclub/screens/thongtinversion.dart';

class DoiMatKhauScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false, // Tắt nút back mặc định của AppBar
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 16),
            IconButton(
              icon: Image.asset('assets/leftArrow.png'),
              iconSize: 24,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
              child: Text(
                'Đổi mật khẩu',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF040C21),
                ),
              ),
            ),
            SizedBox(width: 16),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Mật khẩu hiện tại
            Text(
              "Mật khẩu hiện tại *",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF040C21),
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: 343,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F6),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Nhập mật khẩu hiện tại",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A4AF),
                  ),
                ),
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 16),

            // Mật khẩu mới
            Text(
              "Mật khẩu mới *",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF040C21),
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: 343,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F6),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Tạo mật khẩu mới",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A4AF),
                  ),
                ),
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 16),

            // Nhập lại mật khẩu mới
            Text(
              "Nhập lại mật khẩu mới *",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF040C21),
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: 343,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F6),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Nhập lại mật khẩu mới tạo",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFA0A4AF),
                  ),
                ),
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 392), // Khoảng cách 392px từ thành phần phía trên

            // Nút xác nhận
            Container(
              width: 343,
              height: 48,
              decoration: BoxDecoration(
                color: Color(0xFFFB620B),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "Xác nhận",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
