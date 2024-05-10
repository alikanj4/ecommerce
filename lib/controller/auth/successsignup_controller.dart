import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  gotoLogin();
}

class SuccessSignUpControllerTmp extends SuccessSignUpController {
  late TextEditingController email;

  @override
  gotoLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
