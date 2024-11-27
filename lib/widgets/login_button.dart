import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onPressed;

  LoginButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFF37021),
        padding: EdgeInsets.symmetric(vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        minimumSize: Size(double.infinity, 60),
      ),
      onPressed: onPressed,
      child: Text(
        'Đăng nhập',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
