import 'package:ecomercekhaled/controller/auth/signup_controller.dart';
import 'package:ecomercekhaled/core/constant/imageasset.dart';
import 'package:ecomercekhaled/core/functions/alertexitapp.dart';
import 'package:ecomercekhaled/core/functions/valid.dart';
import 'package:ecomercekhaled/view/secreen/widget/auth/login/coustomtextformfiled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignUp"),
        backgroundColor: Colors.blue,
      ),
      body: PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            alertexitapp();
          },
          child: ListView(
            children: [
              const SizedBox(
                height: 90,
              ),
              Form(
                key: controller.formstate,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset(ImageAsset.login),
                      const SizedBox(
                        height: 60,
                      ),
                      Customformfiled(
                          title: "username",
                          label: "username",
                          icondata: Icons.email_outlined,
                          controller: controller.username,
                          valid: (val) {
                            return ValidInOut(val!, 4, 20, "username");
                          },
                          isNamebr: false),
                      Customformfiled(
                          title: "email",
                          label: "email",
                          icondata: Icons.email_outlined,
                          controller: controller.email,
                          valid: (val) {
                            return ValidInOut(val!, 4, 20, "email");
                          },
                          isNamebr: false),
                      Customformfiled(
                          title: "phone",
                          label: "phone",
                          icondata: Icons.phone,
                          controller: controller.phone,
                          valid: (val) {
                            return ValidInOut(val!, 4, 20, "phone");
                          },
                          isNamebr: false),
                      Customformfiled(
                          title: "password",
                          label: "password",
                          icondata: Icons.password,
                          controller: controller.password,
                          valid: (val) {
                            return ValidInOut(val!, 4, 20, "password");
                          },
                          isNamebr: false),
                      const SizedBox(height: 30),
                      MaterialButton(
                        textColor: Colors.white,
                        color: Colors.blue,
                        onPressed: () {},
                        child: const Text("SignIn"),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
