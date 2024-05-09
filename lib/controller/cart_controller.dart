import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CartController extends GetxController {
  gotoresturantsitems();
}

class CartControllerImp extends CartController {
  @override
  gotoresturantsitems() {}

  Map<Object, Widget> children = {
    0: const Text("توصيل"),
    1: const Text("استلام"),
  };
  int? setectcontroller = 0;

  Map<Object, Widget> children2 = {
    0: const Text("بطاقة"),
    1: const Text("كاش"),
    2: const Text("تحويل بنك "),
  };
  int? setectcontroller2 = 0;
}
