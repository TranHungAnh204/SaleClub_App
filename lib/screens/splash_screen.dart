import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'login_screen.dart'; // Import màn hình đăng nhập
import 'home_screen.dart'; // Import màn hình chính

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _logoOpacity = 0.0;
  double _textOpacity = 0.0;
  bool _showLoading = false;

  @override
  void initState() {
    super.initState();

    // Hiện Splash Screen trong 1 giây
    Timer(Duration(seconds: 1), () {
      setState(() {
        _logoOpacity = 1.0; // Hiện logo App
      });
    });

    // Hiện logo FPT sau 2 giây
    Timer(Duration(seconds: 3), () {
      setState(() {
        _showLoading = true; // Hiện loading indicator và text
        _textOpacity = 1.0; // Hiện text chào mừng
      });
      
      // Chuyển đến màn hình đăng nhập sau 3 giây
      Timer(Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginScreen()), // Chuyển đến màn login
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/splash.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 150),
                AnimatedOpacity(
                  opacity: _logoOpacity,
                  duration: Duration(seconds: 1),
                  child: Image.asset(
                    'assets/logoApp.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(height: 15),
                AnimatedOpacity(
                  opacity: _textOpacity,
                  duration: Duration(seconds: 1),
                  child: Text(
                    "Chào mừng bạn\n quay trở lại!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                if (_showLoading) ...[
                  SizedBox(height: 20),
                  CupertinoActivityIndicator(
                    radius: 20.0,
                  ),
                ],
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Center(
              child: AnimatedOpacity(
                opacity: _logoOpacity,
                duration: Duration(seconds: 1),
                child: Image.asset(
                  'assets/logoFPT.png',
                  width: 100,
                  height: 50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
