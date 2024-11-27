import 'package:flutter/material.dart';

class Thongtintaikhoan extends StatelessWidget {
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
            SizedBox(width: 16), // Khoảng cách 16px bên phải
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
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/profile_avartar.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        print("Edit Profile");
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/pic.png',
                            width: 25,
                            height: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              InfoRow(title: 'Họ tên', content: 'Nguyễn Sơn Tùng'),
              InfoRow(title: 'Chi nhánh', content: 'Hà Nội'),
              InfoRow(title: 'Đơn vị bán hàng', content: 'Nhân viên FTEL - Nhân viên kinh doanh thuộc IBB'),
              InfoRow(title: 'Email', content: 'tungns35@fpt.com.vn'),
              InfoRow(title: 'Số điện thoại', content: '0988 888 888'),

              Container(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Mã QR Code',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF666D7C),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: Image.asset(
                        'assets/qr.png',
                        width: 70,
                        height: 70,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 133), // Khoảng cách từ phần trên đến nút Đăng xuất

              // Nút Đăng xuất
              GestureDetector(
                onTap: () {
                  print("Đăng xuất");
                },
                child: Container(
                  width: 343,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.black, // Màu đen
                    borderRadius: BorderRadius.circular(8), // Bo góc 8px
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/logout.png",
                          width: 14.0,
                          height: 14.0,
                          color: Colors.white, // Màu icon trắng
                        ),
                        SizedBox(width: 8), // Khoảng cách giữa icon và text
                        Text(
                          "Đăng xuất",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white, // Màu chữ trắng
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget con để tạo các dòng thông tin
class InfoRow extends StatelessWidget {
  final String title;
  final String content;

  InfoRow({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Color(0xFFF9F9F9),
        border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF666D7C),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Text(
              content,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF666D7C),
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
