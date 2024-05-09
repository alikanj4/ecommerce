import 'package:ecomercekhaled/binding.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: routes,
      initialBinding: MyBinding(),
      // theme: ThemeData.dark(),
    );
  }
}
