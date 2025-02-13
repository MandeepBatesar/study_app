import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_app/Components/Button/PrimaryButton.dart';
import 'package:study_app/Components/Constants/Stylesheet.dart';
import 'package:study_app/Components/TextField/PrimaryTextfield.dart';
import 'package:study_app/Res/Services/AppServices.dart';
import 'package:study_app/Utils/Routes/RoutesScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Welcome Back"),
              const Text("Glad to See You Again!"),
              heightY(10),
              PrimaryTxtField(
                hint_txt: "Enter Your Email",
                title: "Email",
              ),
              heightY(10),
              PrimaryTxtField(
                hint_txt: "Enter Your Password",
                title: "Password",
                obscuretxt: true,
                suffixicon: Icons.visibility_off,
              ),
              heightY(10),
              const Align(
                alignment: Alignment.centerRight,
                child: Text("Forgot passowrd?"),
              ),
              heightY(20),
              Row(
                children: [
                  PrimaryButton(
                      title: "Login",
                      isExpanded: true,
                      onPressed: () {
                        // Get.toNamed()
                      }),
                ],
              ),
              heightY(25),
              Align(
                alignment: Alignment.center,
                child: RichText(
                    text: TextSpan(
                        style: AppTextTheme()
                            .fs14Normal
                            .copyWith(color: AppColors().black),
                        children: [
                      const TextSpan(text: "New to StudyApp! "),
                      TextSpan(
                          style: AppTextTheme()
                              .fs14Normal
                              .copyWith(color: AppColors().primary),
                          text: "Register Now?",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Get.toNamed(RouteNames.SignupScreen);
                            })
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
