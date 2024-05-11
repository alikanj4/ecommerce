import 'package:ecomercekhaled/core/constant/themedata.dart';
import 'package:ecomercekhaled/core/services/servises.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Localecontroller extends GetxController {
  Locale? language;
  MyServices myServices = Get.find();

  changLoacle(String langcode) {
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(locale);
  }

  ThemeData appTheme = ThemeEnglish;

  @override
  void onInit() {
    String? sheradPrelang = myServices.sharedPreferences.getString("lang");
    if (sheradPrelang == "ar") {
      // ignore: unrelated_type_equality_checks
      appTheme = language == "Ar" ? ThemeArabic : ThemeEnglish;
      Get.changeTheme(appTheme);
      language = const Locale("en");
    } else if (sheradPrelang == "en") {
      // ignore: unrelated_type_equality_checks
      appTheme = language == "en" ? ThemeEnglish : ThemeArabic;
      Get.changeTheme(appTheme);
      language = const Locale("en");
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme == ThemeEnglish;
    }
    super.onInit();
  }
}
