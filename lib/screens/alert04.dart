import 'package:flutter/material.dart';

void showCustomDialog4(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Bo góc 8px
        ),
        child: Container(
          width: 343,  // Giữ kích thước cố định
          height: 183, // Giữ kích thước cố định
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 15), // Cách từ trên và trái 16px
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Căn giữa
                  children: [
                    // Nút đóng bên trái
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop(); // Đóng dialog
                      },
                      child: Image.asset(
                        "assets/close.png", // Hình ảnh nút đóng
                        width: 24,
                        height: 24,
                      ),
                    ),
                    // Chữ "Cảnh báo!!!"
                    Text(
                      "Bật thông báo",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 24), // Để đảm bảo nút đóng không dính sát
                  ],
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 16), // Để căn giữa chữ với AlertDialog
                    Text(
                      "Bạn có muốn bật thông báo không?",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF666D7C),
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16), // Cách đều 16px từ hai bên
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Chia đều khoảng cách
                  children: [
                    Expanded(
                      child: Container(
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF11192E), // Màu nút Hủy
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8), // Bo góc 8px
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop(); // Đóng dialog
                          },
                          child: Text(
                            "Test thông báo",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white, // Màu chữ trắng
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 11), // Khoảng cách giữa hai nút
                    // Nút Xác nhận
                    Expanded(
                      child: Container(
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF37021), // Màu nút Xác nhận
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8), // Bo góc 8px
                            ),
                          ),
                          onPressed: () {
                            // Thực hiện hành động xác nhận ở đây
                            Navigator.of(context).pop(); // Đóng dialog
                          },
                          child: Text(
                            "Bật thông báo",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white, // Màu chữ trắng
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
