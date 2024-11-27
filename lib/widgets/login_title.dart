import 'package:flutter/material.dart';

class LoginTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Đăng nhập',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      textAlign: TextAlign.center,
    );
  }
}
