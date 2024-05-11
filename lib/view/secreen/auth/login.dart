import 'package:ecomercekhaled/controller/auth/login_controller.dart';
import 'package:ecomercekhaled/core/constant/imageasset.dart';
import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:ecomercekhaled/core/functions/alertexitapp.dart';
import 'package:ecomercekhaled/core/functions/valid.dart';
import 'package:ecomercekhaled/view/secreen/widget/auth/login/coustomtextformfiled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    LogincontrollerImp controller = Get.put(LogincontrollerImp());
    return Scaffold(
      appBar: AppBar(title: const Text("Login"), centerTitle: true),

      //====================================================

      body: PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            alertexitapp();
          },
          child: ListView(children: [
            const SizedBox(height: 90),
            Form(
                key: controller.formstate,
                child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(children: [
                      Image.asset(ImageAsset.login),
                      const SizedBox(height: 60),

                      //====================================================

                      Customformfiled(
                          title: "email",
                          label: "email",
                          icondata: Icons.email_outlined,
                          controller: controller.email,
                          valid: (val) {
                            return ValidInOut(val!, 4, 50, "email");
                          },
                          isNamebr: false),

                      //====================================================
                      GetBuilder<LogincontrollerImp>(
                        builder: (controller) => Customformfiled(
                            title: "password",
                            label: "password",
                            icondata: Icons.password,
                            obscureText: controller.isshoepass,
                            onTapIcons: () {
                              controller.showpassword();
                            },
                            controller: controller.password,
                            valid: (val) {
                              return ValidInOut(val!, 4, 50, "password");
                            },
                            isNamebr: false),
                      ),
                      const SizedBox(height: 30),

                      //====================================================

                      Container(
                          alignment: Alignment.centerRight,
                          child: MaterialButton(
                              onPressed: () {
                                controller.forgetpasswordcode();
                              },
                              child: Text("1".tr))),
                      MaterialButton(
                          textColor: Colors.white,
                          color: Colors.pink,
                          onPressed: () {
                            Get.toNamed(AppRoute.homepage);
                          },
                          child: MaterialButton(
                            onPressed: () {
                              controller.login();
                            },
                            child: const Text("Login"),
                          )),

                      //====================================================

                      const SizedBox(height: 30),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Do Not You Account ? "),
                            InkWell(
                                onTap: () {
                                  controller.gotosigup();
                                },
                                child: const Text("signup",
                                    style: TextStyle(
                                        color: Colors.pink, fontSize: 20)))
                          ])
                    ])))
          ])),
    );
  }
}
