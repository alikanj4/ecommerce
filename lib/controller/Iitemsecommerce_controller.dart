import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:get/get.dart';

abstract class ItemsEcommerce extends GetxController {
  gotoprudectecommerce();
  gotocart();
}

class ItemsEcommerceImp extends ItemsEcommerce {
  @override
  gotocart() {
    Get.toNamed(AppRoute.cart);
  }

  @override
  gotoprudectecommerce() {
    Get.toNamed(AppRoute.productdetailsecommers);
  }
}
