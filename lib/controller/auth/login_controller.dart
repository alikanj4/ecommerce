import 'package:ecomercekhaled/core/class/statusrequsert.dart';
import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:ecomercekhaled/core/services/servises.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Logincontroller extends GetxController {
  login();
  forgetpasswordcode();
  showpassword();
  gotosigup();
}

class LogincontrollerImp extends Logincontroller {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  // LoginData loginData = LoginData(Curd());
  MyServices myServices = Get.find();
  GlobalKey<FormState> formstate = GlobalKey();
  StatusRequest? statusRequest;
  bool isshoepass = true;

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

  @override
  forgetpasswordcode() {
    Get.toNamed(AppRoute.forgetpassword);
  }

  @override
  showpassword() {
    isshoepass = isshoepass == true ? false : true;
    update();
  }
}
