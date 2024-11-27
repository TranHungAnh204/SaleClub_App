import 'package:flutter/material.dart';

class SignupSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Bạn chưa có tài khoản?'),
        SizedBox(height: 5),
        GestureDetector(
          onTap: () {
            // Logic for "Sign up for business cooperation"
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              'Đăng ký hợp tác kinh doanh',
              style: TextStyle(
                color: Color(0xFF4564ED),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
