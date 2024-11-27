import 'package:flutter/material.dart';

class ConstructionOrderWidget extends StatelessWidget {
  const ConstructionOrderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Tiêu đề
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Phiếu thi công trả về",
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
                  SizedBox(width: 6),
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
        SizedBox(height: 10),
        // Danh sách các thẻ
        Container(
          height: 210, // Chiều cao của thẻ
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              // Thẻ 1
              _buildCard(
                image: "assets/phieuthicong.png",
                name: "Phạm Quang Tuấn",
                message: "Không có đường truyền để triển khai.",
                address: "17 Duy Tân, Dịch Vọng, Cầu Giấy, Hà Nội",
              ),
              SizedBox(width: 10), // Khoảng cách giữa các thẻ
             
              _buildCard(
                image: "assets/phieuthicong.png",
                name: "Phạm Quang Tuấn",
                message: "Không có đường truyền để triển khai.",
                address: "17 Duy Tân, Dịch Vọng, Cầu Giấy, Hà Nội",
              ),
              SizedBox(width: 10), // Khoảng cách giữa các thẻ
             
                _buildCard(
                  image: "assets/phieuthicong.png",
                  name: "Phạm Quang Tuấn",
                  message: "Không có đường truyền để triển khai.",
                  address: "17 Duy Tân, Dịch Vọng, Cầu Giấy, Hà Nội",
                ),
                SizedBox(width: 10), // Khoảng cách giữa các thẻ
              
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCard({
    required String image,
    required String name,
    required String message,
    required String address,
  }) {
    return Container(
      width: 160, // Chiều rộng của thẻ
      height: 210, // Chiều cao của thẻ
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Hình ảnh
          Image.asset(
            image,
            width: 45,
            height: 45,
          ),
          SizedBox(height: 16), // Khoảng cách giữa hình và tên

          // Tên
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Color(0xFF11192E),
            ),
          ),
         
          // Đường gạch nối không liền
          Divider(color: Color(0xFFEFEFEF)), 
        
          // Thông báo không có đường truyền
          Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Color(0xFF2F80ED),
            ),
          ),
         

          // Đường gạch nối đứt
          Divider(color: Color(0xFFEFEFEF)), 
         

          // Địa chỉ
          Text(
            address,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
