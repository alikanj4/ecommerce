import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:get/get.dart';

abstract class Ecommerce extends GetxController {
  gotoitemsecommce();
  gotocart();
  gotoprudectecommerce();
}

class EcommerceImp extends Ecommerce {
  bool selected = false;
  int? defaultchioseindex;

  @override
  void onInit() {
    defaultchioseindex = 0;
    super.onInit();
  }

  List name = [
    "إلكترونيات",
    "ملابس",
    " إكسسوارات ",
    "أدوات منزلية",
    "كهربائيات",
    "عطور",
    "سوبر ماركت"
  ];

  @override
  gotoitemsecommce() {
    Get.toNamed(AppRoute.itemsecommerce);
  }

  @override
  gotocart() {
    Get.toNamed(AppRoute.cart);
  }

  @override
  gotoprudectecommerce() {
    Get.toNamed(AppRoute.productdetailsecommers);
  }
}
