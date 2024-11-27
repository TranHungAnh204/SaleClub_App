import 'package:flutter/material.dart';
import 'package:saleclub/screens/alert01.dart';
import 'package:saleclub/screens/alert02.dart';
import 'package:saleclub/screens/alert03.dart';
import 'package:saleclub/screens/alert04.dart';
import 'package:saleclub/screens/alert05.dart';

class AlertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialogs"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showCustomDialog1(context); 
              },
              child: Text("Show Alert 01"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showCustomDialog2(context); 
              },
              child: Text("Show Alert 02"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showCustomDialog3(context);
              },
              child: Text("Show Alert 03"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showCustomDialog4(context); 
              },
              child: Text("Show Alert 04"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showCustomDialog5(context);
              },
              child: Text("Show Alert 05"),
            ),
          ],
        ),
      ),
    );
  }
}
