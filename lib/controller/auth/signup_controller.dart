import 'package:ecomercekhaled/core/class/statusrequsert.dart';
import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  tologincontroller();
  forgetpasswordcode();
  gotologin();
}

class SignUpControllerImp extends SignUpController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController phone = TextEditingController();

  GlobalKey<FormState> formstate = GlobalKey();
  StatusRequest? statusRequest;

  signup() async {
    if (formstate.currentState!.validate()) {
      Get.toNamed(AppRoute.veriflycodeSignup);
      print("valid");
    } else {
      print(" not valid");
    }
  }

  @override
  tologincontroller() {
    // TODO: implement tologincontroller
    throw UnimplementedError();
  }

  @override
  forgetpasswordcode() {
    // TODO: implement forgetpasswordcode
    throw UnimplementedError();
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
  gotologin() {
    Get.toNamed(AppRoute.login);
  }
}
