import 'package:ecomercekhaled/controller/auth/successsignup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SucessSignUp extends StatelessWidget {
  const SucessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerTmp controller =
        Get.put(SuccessSignUpControllerTmp());

    return Scaffold(
        bottomNavigationBar: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.all(20),
            width: double.infinity,
            child: MaterialButton(
                padding: const EdgeInsets.all(15),
                textColor: Colors.white,
                color: Colors.pink,
                onPressed: () {
                  controller.gotoLogin();
                },
                child: const Text("Go To Login "))),
        appBar: AppBar(
            title: const Text("Success Sign In ",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink)),
            centerTitle: true),
        body: const Column(children: [
          SizedBox(height: 200),
          Center(
              child: Icon(Icons.check_circle_outline,
                  size: 200, color: Colors.pink)),
        ]));
  }
}
