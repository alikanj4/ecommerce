import 'package:ecomercekhaled/controller/auth/resertpassword_controller.dart';
import 'package:ecomercekhaled/core/functions/valid.dart';
import 'package:ecomercekhaled/view/secreen/widget/auth/login/coustomtextformfiled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Rsertpassword extends StatelessWidget {
  const Rsertpassword({super.key});

  @override
  Widget build(BuildContext context) {
    RsertPasswordControllerTmp controller =
        Get.put(RsertPasswordControllerTmp());

    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text("Resert password",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink))),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: ListView(children: [
              const Text("Welcome Back "),
              const Text(
                  "Sign In With Your Email And Password\n OR continue With social Media"),
              const SizedBox(height: 50),

              //=============================================

              Customformfiled(
                  isNamebr: false,
                  valid: (val) {
                    return ValidInOut(val!, 5, 30, "password");
                  },
                  title: "password",
                  label: "password",
                  icondata: Icons.email_outlined,
                  controller: controller.password),

              //=============================================

              Customformfiled(
                  isNamebr: false,
                  valid: (val) {
                    return ValidInOut(val!, 5, 30, "password");
                  },
                  title: "repassword",
                  label: "repassword",
                  icondata: Icons.email_outlined,
                  controller: controller.repassword),
              const SizedBox(height: 16),

              //=============================================

              MaterialButton(
                  onPressed: () {
                    controller.tosucesscontroller();
                  },
                  textColor: Colors.white,
                  color: Colors.pink,
                  child: Text("Check")),
              Container(height: 20)
            ])));
  }
}
