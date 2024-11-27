

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saleclub/screens/all_services_screen.dart';
import 'package:saleclub/screens/bottom_navigation.dart';
import 'package:saleclub/view_models/home_view_model.dart';
import 'package:saleclub/view_models/login_view_model.dart'; // Import LoginViewModel
import 'package:saleclub/screens/profile_screen.dart';
import 'package:saleclub/screens/thongtintaikhoan.dart';
import 'package:saleclub/screens/doimatkhau.dart';
import 'package:saleclub/screens/thongtinversion.dart';
import 'package:saleclub/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeViewModel()),
        ChangeNotifierProvider(create: (context) => LoginViewModel()), // Add this provider
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/',
        routes: {
          '/': (context) => LoginScreen(),
          '/ThongTinTaiKhoan': (context) => Thongtintaikhoan(),
          '/DoiMatKhau': (context) => DoiMatKhauScreen(),
          '/ThongTinVersionScreen': (context) => ThongTinVersionScreen(),
          '/TatCaDichVu': (context) => AllServicesScreen(),
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
