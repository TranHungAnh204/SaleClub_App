import 'package:flutter/material.dart';

void showCustomDialog3(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        content: Container(
          width: 343,
          height: 280,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16), // Cách từ trên và trái 16px
                child: Row(
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
                  ],
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/error.png", // Hình ảnh icon chuông
                      width: 65,
                      height: 65,
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Đã có lỗi xảy ra!",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
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
              SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF37021), // Màu nút xác nhận
                    minimumSize: Size(311, 44), // Kích thước nút xác nhận
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8), // Bo góc 8px
                    ),
                  ),
                  onPressed: () {
                    // Thực hiện hành động xác nhận ở đây
                    Navigator.of(context).pop(); // Đóng dialog
                  },
                  child: Text(
                    "Xác nhận",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
