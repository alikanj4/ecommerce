import 'package:ecomercekhaled/controller/auth/verfiycodesignup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VeriflycodeSignUp extends StatelessWidget {
  const VeriflycodeSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerifycodeSignUpControllerTmp controller =
        Get.put(VerifycodeSignUpControllerTmp());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Verification Code",
          style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.grey[295]),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: ListView(
          children: [
            const Text("Check "),
            const Text(
                "Sign In With Your Email And Password\n OR continue With social Media"),
            const SizedBox(height: 50),
            OtpTextField(
              numberOfFields: 5,
              borderColor: const Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.gotosuccess();
              }, // end onSubmit
            ),
            Container(
              height: 16,
            ),
            Container(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
