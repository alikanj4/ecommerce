import 'package:ecomercekhaled/controller/auth/successresertpasswoird_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sucessresertpassword extends StatelessWidget {
  const Sucessresertpassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResertPasswordControllerTmp controller =
        Get.put(SuccessResertPasswordControllerTmp());
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

        //=======================================================

        appBar: AppBar(
            title: const Text("Success",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink)),
            centerTitle: true),
        body: Column(children: [
          Center(
              child: Container(
                  height: 500,
                  child: const Icon(Icons.check_circle_outline,
                      size: 200, color: Colors.pink))),
        ]));
  }
}
