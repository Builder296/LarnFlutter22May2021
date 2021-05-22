import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_flutter/cont/color.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.red[500],
      body: Container(
        padding: EdgeInsets.only(
          top: Get.mediaQuery.padding.top,
          bottom: Get.mediaQuery.padding.bottom,
        ),
        width: Get.width,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: Get.height * 0.1,
              ),
              width: Get.width,
              child: Column(
                children: [
                  logo(),
                ],
              ),
            ),
            ElevatedButton(
              child: Text(
                'เข้าใช้งาน',
                style: TextStyle(
                    color: AppColors.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all(Colors.yellow.shade700),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                      vertical: 8, horizontal: Get.width * 0.2),
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  Column logo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "Kept",
          style: TextStyle(
              color: Colors.white, fontSize: 64, fontWeight: FontWeight.bold),
        ),
        Text(
          "by krungsri",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
