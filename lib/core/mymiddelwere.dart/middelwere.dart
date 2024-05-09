import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:ecomercekhaled/core/services/servises.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMidleWere extends GetMiddleware {
  @override
  // ignore: overridden_fields
  int? priority = 1;

  MyServices myServices = Get.find();

  @override
  // ignore: body_might_complete_normally_nullable
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("step") == "2") {
      return const RouteSettings(name: AppRoute.homepage);
    }
    if (myServices.sharedPreferences.getString("step") == "1") {
      return const RouteSettings(name: AppRoute.login);
    }
  }
}
