import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter/cont/color.dart';
import 'package:learn_flutter/widgets/logo.dart';

class HomeScreen extends StatelessWidget {
  final String fname;
  final String lname;
  HomeScreen({Key? key, required this.fname, required this.lname});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.red,
      body: Container(
        margin: EdgeInsets.only(
          top: Get.mediaQuery.padding.top,
          bottom: Get.mediaQuery.padding.bottom,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: Get.height * 0.1,
              ),
              width: Get.width,
              child: Logo(),
            ),
            Container(
              margin: EdgeInsets.only(
                top: Get.height * 0.1,
              ),
              child: Text(
                "สวัสดี, คุณ $fname $lname",
                style: TextStyle(
                  color: Colors.yellow.shade700,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
