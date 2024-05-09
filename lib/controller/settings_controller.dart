import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:ecomercekhaled/core/services/servises.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  MyServices myServices = Get.find();

  GlobalKey<ScaffoldState> formstate = GlobalKey();

  logout() {
    myServices.sharedPreferences.clear();
    Get.toNamed(AppRoute.login);
  }

  gotoprofile() {
    Get.toNamed(AppRoute.profile);
  }
}
