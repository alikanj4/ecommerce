import 'package:ecomercekhaled/controller/auth/forgetpassword_controller.dart';
import 'package:ecomercekhaled/core/functions/valid.dart';
import 'package:ecomercekhaled/view/secreen/widget/auth/login/coustomtextformfiled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgaetPasswordTmp controller = Get.put(ForgaetPasswordTmp());

    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text("SignUp",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink))),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: ListView(children: [
              const Text(" Check Email "),

              //======================================================

              const Text(
                  "Sign In With Your Email And Password\n OR continue With social Media"),

              //======================================================

              const SizedBox(height: 50),
              Customformfiled(
                  isNamebr: false,
                  valid: (val) {
                    return ValidInOut(val!, 5, 30, "password");
                  },
                  title: "Email",
                  label: "Email",
                  icondata: Icons.email_outlined,
                  controller: controller.email),

              //======================================================

              const SizedBox(height: 25),
              MaterialButton(
                  onPressed: () {
                    controller.toverifycodecontroller();
                  },
                  textColor: Colors.white,
                  color: Colors.pink,
                  child: const Text("Check"))
            ])));
  }
}
