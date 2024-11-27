import 'package:flutter/material.dart';
import 'package:saleclub/screens/alert04.dart';


class ProfileScreen extends StatelessWidget {
  final double topCoverHeight = 150; // Chiều cao của banner
  final double avatarRadius = 45;    // Bán kính của avatar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tài khoản",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Color(0xFF040C21),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: topCoverHeight,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/profile_banner.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: topCoverHeight - avatarRadius,
                  child: CircleAvatar(
                    radius: avatarRadius,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: avatarRadius - 3,
                      backgroundImage: AssetImage('assets/profile_avartar.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: topCoverHeight + avatarRadius + 16,
                  child: Column(
                    children: [
                      Text(
                        'Nguyễn Sơn Tùng',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF040C21),
                        ),
                      ),
                      SizedBox(height: 24),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: avatarRadius + 62),
            _buildProfileOptions(context), // Chuyển context vào đây
          ],
        ),
      ),
    );
  }

  Widget _buildProfileOptions(BuildContext context) {
    return Column(
      children: [
        _buildListTile(
          image: 'assets/thongtincanhan.png',
          title: "Thông tin tài khoản",
          onTap: () {
            Navigator.pushNamed(context, '/ThongTinTaiKhoan'); // Chuyển trang
          },
        ),
        _buildListTile(
          image: 'assets/nhanthongbao.png',
          title: "Nhận thông báo",
          trailing: Switch(
            value: true,
            onChanged: (value) {
              if (value) {
                // Nếu công tắc bật, thực hiện hiển thị alert dialog
                showCustomDialog4(context);
              } else {
                // Bạn có thể thêm hành động khi công tắc tắt nếu cần
              }
            },
            activeColor: Color.fromARGB(255, 255, 255, 255),
            inactiveThumbColor: const Color.fromARGB(255, 161, 159, 159),
            activeTrackColor: Color(0xFFFB620B),
          ),
        ),
        _buildListTile(
          image: 'assets/doimatkhau.png',
          title: "Đổi mật khẩu",
          onTap: () {
            Navigator.pushNamed(context, '/DoiMatKhau'); // Chuyển trang
          },
        ),
        _buildListTile(
          image: 'assets/viFoxpay.png',
          title: "Ví Foxpay",
          trailing: Text(
            "65.180.000đ",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ),
        _buildListTile(
          image: 'assets/nganhang.png',
          title: "Ngân hàng liên kết",
          trailing: Text(
            "1 liên kết",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFFFB620B),
            ),
          ),
        ),
        _buildListTile(
          image: 'assets/hanmuc.png',
          title: "Hạn mức",
          trailing: Text(
            "5.000.000 đ",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFFA0A4AF),
            ),
          ),
        ),
        _buildListTile(
          image: 'assets/hdsd.png',
          title: "Hướng dẫn sử dụng",
          onTap: () {},
        ),
        _buildListTile(
          image: 'assets/thongtinungdung.png',
          title: "Thông tin ứng dụng",
          onTap: () {
            Navigator.pushNamed(context, '/ThongTinVersionScreen'); // Chuyển trang
          },
        ),
        _buildListTile(
          image: 'assets/xephangthanhvien.png',
          title: "Xếp hạng thành viên",
          onTap: () {},
        ),
      ],
    );
  }

  ListTile _buildListTile({
    required String image,
    required String title,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return ListTile(
      leading: Image.asset(image, width: 18, height: 18, color: Colors.grey),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xFF040C21),
        ),
      ),
      trailing: trailing ?? Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: onTap,
    );
  }
}

