import 'package:ecomercekhaled/core/class/statusrequsert.dart';
import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:ecomercekhaled/core/services/servises.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Logincontroller extends GetxController {
  login();

  gotosigup();
}

class LogincontrollerImp extends Logincontroller {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  // LoginData loginData = LoginData(Curd());
  MyServices myServices = Get.find();
  GlobalKey<FormState> formstate = GlobalKey();
  StatusRequest? statusRequest;

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      Get.toNamed(AppRoute.homepage);
      print("valid");
    } else {
      print("not valid");
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  gotosigup() {
    Get.toNamed(AppRoute.signup);
  }
}
