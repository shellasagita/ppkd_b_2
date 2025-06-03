import 'package:flutter/material.dart';
import 'package:ppkd_b_2/constant/app_image.dart';
import 'package:ppkd_b_2/constant/app_style.dart';
import 'package:ppkd_b_2/helper/preference.dart';
import 'package:ppkd_b_2/meet_12/meet_12b.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changePage() {
    Future.delayed(Duration(seconds: 3), () async {
      bool isLogin = await PreferenceHandler.getLogin();
      print("isLogin: $isLogin");
      if (isLogin) {
        return Navigator.pushNamedAndRemoveUntil(
          context,
          MeetDuaBelasB.id,
          (route) => false,
        );
      } else {
        Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => false);
      }
    });
  }

  @override
  void initState() {
    changePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),

            Image.asset(AppImage.pisang),
            SizedBox(height: 20),
            Text("Pisang App", style: AppStyle.fontBold()),
            Spacer(),
            SafeArea(
              child: Text("v 1.0.0", style: AppStyle.fontRegular(fontSize: 10)),
            ),
          ],
        ),
      ),
    );
  }
}
