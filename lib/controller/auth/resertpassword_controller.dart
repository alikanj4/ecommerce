import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class RsertPasswordController extends GetxController {
  verifycode();
  tosucesscontroller();
}

class RsertPasswordControllerTmp extends RsertPasswordController {
  late TextEditingController password;
  late TextEditingController repassword;

  @override
  tosucesscontroller() {
    Get.toNamed(AppRoute.sucessResertPassword);
  }

  @override
  verifycode() {}

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
