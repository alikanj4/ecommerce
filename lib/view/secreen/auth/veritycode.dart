import 'package:ecomercekhaled/controller/auth/veriflycode_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class Veriflycode extends StatelessWidget {
  const Veriflycode({super.key});

  @override
  Widget build(BuildContext context) {
    VerifycodeControllerTmp controller = Get.put(VerifycodeControllerTmp());

    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text("Verification Code",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink))),

        //=============================================================
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: ListView(children: [
              const Text("Check "),

              //=============================================================

              const Text(
                  "Sign In With Your Email And Password\n OR continue With social Media"),
              const SizedBox(height: 50),

              //=============================================================

              OtpTextField(
                  numberOfFields: 5,
                  borderColor: const Color(0xFF512DA8),
                  showFieldAsBox: true,
                  onCodeChanged: (String code) {},
                  onSubmit: (String verificationCode) {
                    controller.toverifycodecontroller();
                  })
            ])));
  }
}
