import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/logoFPT.png', width: 70, height: 70),
        Text(
          'Version 2.1.1',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
      ],
    );
  }
}
