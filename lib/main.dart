import 'package:ecomercekhaled/binding.dart';
import 'package:ecomercekhaled/core/localization/changetranslations.dart';
import 'package:ecomercekhaled/core/localization/trantions.dart';
import 'package:ecomercekhaled/core/services/servises.dart';
import 'package:ecomercekhaled/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Localecontroller controller = Get.put(Localecontroller());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: routes,
      translations: MyTranstions(),
      locale: controller.language,
      initialBinding: MyBinding(),
      // theme: ThemeData.dark(),
    );
  }
}
