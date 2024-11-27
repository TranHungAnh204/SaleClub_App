import 'package:flutter/material.dart';

class UserInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  "assets/avartar.png",
                  width: 33,
                  height: 33,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 8),
              RichText(
                text: TextSpan(
                  text: "Hi, ",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  children: [
                    TextSpan(
                      text: "Trongnv28",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "TP. HCM",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(width: 4),
              Image.asset(
                "assets/vitri.png",
                width: 12,
                height: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
