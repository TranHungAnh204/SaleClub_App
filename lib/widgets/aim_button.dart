import 'package:flutter/material.dart';

class AIMButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 20),
        side: BorderSide(
          color: const Color.fromARGB(255, 127, 126, 126),
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        minimumSize: Size(double.infinity, 60),
      ),
      onPressed: () {
        // Logic for AIM account login
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/fpt.png', width: 20, height: 20),
          SizedBox(width: 5),
          Text('Tài khoản AIM', style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}
