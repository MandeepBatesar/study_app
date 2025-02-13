import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_app/Utils/Routes/RoutesScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.toNamed(RouteNames.LoginScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(child: Text("Welcome To StudyApp")),
      ),
    );
  }
}
