import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:get/get.dart';

abstract class ResturanutsController extends GetxController {
  gotoresturantsitems();
}

class ResturanutsControllerImp extends ResturanutsController {
  bool selected = false;
  int? ali;
  List name = [
    "شاورما",
    "غربي",
    "فروج مشوي ",
    "مشاوي",
    "صفيحة",
    "سمك",
    "بيتزا",
    "برجر",
    "فطور",
    "مناقيش",
    "مناسف",
    "مأكولات سورية",
    "مأكولات تركية",
    "كافيه",
    "حلويات",
    "ملحمة"
  ];
  @override
  void onInit() {
    ali = 0;
    super.onInit();
  }

  @override
  gotoresturantsitems() {
    Get.toNamed(AppRoute.restaurantitems);
  }
}
