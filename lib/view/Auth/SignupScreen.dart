import 'package:flutter/material.dart';
import 'package:study_app/Components/Button/PrimaryButton.dart';
import 'package:study_app/Components/TextField/PrimaryTextfield.dart';
import 'package:study_app/Res/Services/AppServices.dart';

class SignupScreen extends StatelessWidget {
   SignupScreen({super.key});
List Statelist=[
  "Haryana","Panjab","Delhi"
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Personal Details"),
            const Text("Please fill all required details for Registration"),
            heightY(15),
            // heightY(10),
            PrimaryTxtField(
              hint_txt: "Enter Your Name",
            ),
            heightY(10),
            PrimaryTxtField(
              hint_txt: "Enter Your Email",
            ),
            heightY(10),
            PrimaryTxtField(
              hint_txt: "Enter Your Phone No.",
            ),
            heightY(10),
            PrimaryTxtField(
              hint_txt: "Enter Your State",
            ),
            heightY(10),
          DropdownButtonFormField(items: [], onChanged: (value) {
            
          }),
            heightY(10),
            PrimaryTxtField(
              hint_txt: "Enter Your Password",
              obscuretxt: true,
              suffixicon: Icons.visibility_off,
            ),

            heightY(20),
            Row(
              children: [
                PrimaryButton(
                    title: "Sign Up",
                    isExpanded: true,
                    onPressed: () {
                      // Get.toNamed()
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
