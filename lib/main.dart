import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:study_app/Res/Services/AppConfig.dart';
import 'package:study_app/Utils/Routes/RoutesScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
          // initialBinding: ,
          initialRoute: "/",
          getPages: approutes,
        );
      },
      designSize: Size(AppConfig.screenWidth, AppConfig.screenHeight),
      // child: const MaterialApp(home: SignupScreen())
    );
  }
}
