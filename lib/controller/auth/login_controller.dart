import 'package:ecomercekhaled/core/class/statusrequsert.dart';
import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:ecomercekhaled/core/services/servises.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Logincontroller extends GetxController {
  // login();
  tologincontroller();
  forgetpasswordcode();
  gotosigup();
}

class LogincontrollerImp extends Logincontroller {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  // LoginData loginData = LoginData(Curd());
  MyServices myServices = Get.find();
  GlobalKey<FormState> formstate = GlobalKey();
  StatusRequest? statusRequest;

  // @override
  // login() async {
  //   if (formstate.currentState!.validate()) {
  //     statusRequest = StatusRequest.laoding;
  //     update();
  //     var response = await loginData.postadata(
  //       email.text,
  //       password.text,
  //     );
  //     print("=============================== controller $response");
  //     statusRequest = handlingData(response);
  //     if (StatusRequest.success == statusRequest) {
  //       if (response['status'] == "success") {
  //         // data.addAll(response['data']);
  //         myServices.sharedPreferences
  //             .setString("id", response['data']['users_id'].toString());
  //         myServices.sharedPreferences
  //             .setString("username", response['data']["users_name"].toString());
  //         myServices.sharedPreferences
  //             .setString("email", response['data']["users_email"].toString());
  //         myServices.sharedPreferences
  //             .setString("phone", response['data']["users_phone"].toString())
  //             .toString();

  //         myServices.sharedPreferences.setString("step", "2");
  //         Get.offNamed(AppRoute.homepage);
  //       } else {
  //         Get.defaultDialog(
  //             title: "wering", middleText: "الايميل او البريد خطأ");
  //         statusRequest == StatusRequest.failure;
  //       }

  //       update();
  //     }
  //   }
  // }

  @override
  tologincontroller() {}

  @override
  forgetpasswordcode() {}

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
