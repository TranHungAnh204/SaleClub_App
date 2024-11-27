import 'package:flutter/material.dart';
import 'package:saleclub/screens/home_screen.dart'; // Nhập HomeScreen nếu chưa có

class AllServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Danh sách hình ảnh và nhãn cho các dịch vụ
    final List<Map<String, String>> services = [
      {"icon": "assets/nhanvattu.png", "label": "Nhân vật tư"},
      {"icon": "assets/quanlyDTKD.png", "label": "Quản lý DTKD"},
      {"icon": "assets/tapdiem.png", "label": "Tập điểm"},
      {"icon": "assets/tatcadichvu.png", "label": "Tất cả dịch vụ"},
      {"icon": "assets/khachHangTiemNang.png", "label": "Khách hàng tiềm năng"},
      {"icon": "assets/AM.png", "label": "AM"},
      {"icon": "assets/CSKH.png", "label": "CSKH"},
      {"icon": "assets/thanhLy.png", "label": "Thanh lý TSD"},
      {"icon": "assets/chat.png", "label": "Chat"},
      {"icon": "assets/banMoi.png", "label": "Bán mới"},
      {"icon": "assets/quanlySale.png", "label": "Quản lý Salesman"},
      {"icon": "assets/PTMap.png", "label": "PT Map"},
      {"icon": "assets/VioEdu.png", "label": "VioEdu"},
      {"icon": "assets/trienkhai.png", "label": "Triển khai"},
      {"icon": "assets/donhang.png", "label": "Đơn hàng"},
      {"icon": "assets/foxhelp.png", "label": "FoxHelpi"},
      {"icon": "assets/baocao.png", "label": "Báo cáo"},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Màu nền cho AppBar
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Cụm đầu tiên
          Padding(
            padding: const EdgeInsets.all(16.0), // Padding cho phần đầu
            child: Row(
              children: [
                // Icon mũi tên bên trái
                GestureDetector(
                  onTap: () {
                    // Điều hướng về HomeScreen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Image.asset("assets/leftArrow.png", width: 18, height: 18),
                ),
                SizedBox(width: 8),
                // Tiêu đề
                Expanded(
                  child: Text(
                    "Tất cả dịch vụ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Đường kẻ
          Container(
            width: double.infinity,
            height: 6,
            decoration: BoxDecoration(
              color: Color(0xfff1f1f1),
            ),
            margin: const EdgeInsets.symmetric(vertical: 8),
          ),
          // Tiêu đề Danh sách dịch vụ nằm dưới đường kẻ
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0), // Padding cho tiêu đề
            child: Text(
              "Danh sách dịch vụ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 8), // Khoảng cách giữa tiêu đề và danh sách dịch vụ
          // Danh sách dịch vụ
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Padding cho danh sách dịch vụ
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // Mỗi hàng có 4 nút
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.8, // Điều chỉnh tỉ lệ để có đủ không gian cho text
                ),
                itemCount: services.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), // Không cuộn được
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        services[index]["icon"]!,
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(height: 4),
                      Text(
                        services[index]["label"]!,
                        textAlign: TextAlign.center, // Căn giữa chữ
                        style: TextStyle(fontSize: 12), // Thiết lập kiểu chữ
                        overflow: TextOverflow.ellipsis, // Tránh overflow cho text
                        maxLines: 2, // Cho phép xuống hàng
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
