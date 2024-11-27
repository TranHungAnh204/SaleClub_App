import 'package:flutter/material.dart';

class ThongTinVersionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 8.0), // Thêm một chút đệm phía trên để căn giữa
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: 16,
                child: IconButton(
                  icon: Image.asset('assets/leftArrow.png'),
                  iconSize: 24,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                left: 120, // Cách mũi tên 60px
                child: Text(
                  'Thông tin ứng dụng',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF040C21),
                  ),
                ),
              ),
            ],
          ),
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
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: 4, // Tạo 4 mục cho ví dụ
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 4), // Đẩy logo lên trên một chút
                      child: Image.asset(
                        'assets/version.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Phiên bản 6.${4 - index}.1",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Nâng cấp và cải thiện hiệu năng ứng dụng",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF666D7C),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                  width: 359,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Color(0xffeeeeee),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
