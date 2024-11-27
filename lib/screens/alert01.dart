import 'package:flutter/material.dart';

void showCustomDialog1(BuildContext context) {
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
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Row(
                  children: [

                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.asset(
                        "assets/close.png",
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
                      "assets/bell.png",
                      width: 65,
                      height: 65,
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Thông báo",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Bạn có chắc chắn muốn kích hoạt chế độ thông báo không?",
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
                    backgroundColor: Color(0xFFF37021),
                    minimumSize: Size(311, 44),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
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
