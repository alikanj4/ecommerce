import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPassword extends GetxController {
  verifycode();
  toverifycodecontroller();

  topasswordcontroller();
}

class ForgaetPasswordTmp extends ForgetPassword {
  late TextEditingController email;

  @override
  verifycode() {}

  @override
  topasswordcontroller() {
    Get.offNamed(AppRoute.forgetpassword);
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }

  @override
  toverifycodecontroller() {
    Get.toNamed(AppRoute.veriflycode);
  }
}
