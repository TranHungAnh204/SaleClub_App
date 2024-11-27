import 'package:flutter/material.dart';
import 'package:saleclub/screens/home_screen.dart';
import 'package:saleclub/screens/home_screen_2.dart';
import 'package:saleclub/screens/no_notifications_screen.dart.dart';
import 'package:saleclub/screens/notifications_screen.dart';
import 'package:saleclub/screens/profile_screen.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    // CartPage(),
    HomeScreen2(),
    ReportPage(),
    NotificationsScreen(),
    ProfileScreen(), // Thêm trang Tài khoản
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        width: 375,
        height: 76,
        decoration: BoxDecoration(color: Colors.white),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                _selectedIndex == 0 ? "assets/Home-on.png" : "assets/Home-off.png",
                width: 24,
                height: 24,
              ),
              label: 'Trang chủ',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                _selectedIndex == 1 ? "assets/Cart-on.png" : "assets/Cart-off.png",
                width: 24,
                height: 24,
              ),
              label: 'Bán hàng',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                _selectedIndex == 2 ? "assets/Report-on.png" : "assets/Report-off.png",
                width: 24,
                height: 24,
              ),
              label: 'Báo cáo',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                _selectedIndex == 3 ? "assets/Notify-on.png" : "assets/Notify-off.png",
                width: 24,
                height: 24,
              ),
              label: 'Thông báo',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                _selectedIndex == 4 ? "assets/Profile-on.png" : "assets/Profile-off.png",
                width: 24,
                height: 24,
              ),
              label: 'Tài khoản',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFF11192E),
          unselectedItemColor: Color(0xFF666D7C),
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}

// // Các trang tương ứng với tab
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Text("Trang chủ"));
//   }
// }

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Bán hàng"));
  }
}

class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Báo cáo"));
  }
}

class NotifyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Thông báo"));
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Tài khoản"));
  }
}
