import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:flutter/material.dart';
import 'package:study_app/Components/Button/PrimaryButton.dart';
import 'package:study_app/Components/Constants/img.dart';
import 'package:study_app/Components/TextField/PrimaryTextfield.dart';
import 'package:study_app/Res/Services/AppServices.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  List Statelist = ["Haryana", "Panjab", "Delhi"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                AppImg.appicon,
                scale: 8,
              ),
            ),
            heightY(35),
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
            // DropdownButtonFormField(value: ,
            //   items: const [], onChanged: (value) {}),
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

class StateCityPickerIndia extends StatefulWidget {
  const StateCityPickerIndia({super.key});

  @override
  _StateCityPickerIndiaState createState() => _StateCityPickerIndiaState();
}

class _StateCityPickerIndiaState extends State<StateCityPickerIndia> {
  String stateValue = "";
  String cityValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("State & City Picker (India)")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// State & City Picker (India Only)
            SelectState(
              onCountryChanged: (value) {
                // Do nothing since country is fixed to India
              },
              onStateChanged: (value) {
                setState(() {
                  stateValue = value;
                  cityValue = ""; // Reset city when state changes
                });
              },
              onCityChanged: (value) {
                setState(() {
                  cityValue = value;
                });
              },
              // country: "India", // Lock country to India
            ),

            const SizedBox(height: 20),

            /// Display Selected Values
            Text("Selected State: $stateValue",
                style: const TextStyle(fontSize: 16)),
            Text("Selected City: $cityValue",
                style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
