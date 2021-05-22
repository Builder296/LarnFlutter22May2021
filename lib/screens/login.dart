import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            Column(
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
                Container(
                  width: Get.width * 0.8,
                  height: 44,
                  margin: EdgeInsets.only(
                    top: Get.height * 0.1,
                  ),
                  child: loginButton(),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "ต้องการความช่วยเหลือ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton loginButton() {
    return ElevatedButton(
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
        backgroundColor: MaterialStateProperty.all(Colors.yellow.shade700),
        padding: MaterialStateProperty.all(
          EdgeInsets.symmetric(
            vertical: 8,
          ),
        ),
      ),
      onPressed: () {},
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
