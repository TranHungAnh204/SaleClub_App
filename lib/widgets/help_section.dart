import 'package:flutter/material.dart';

class HelpSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/book.png', width: 20, height: 20),
        SizedBox(width: 5),
        Text('Hướng dẫn sử dụng'),
      ],
    );
  }
}
