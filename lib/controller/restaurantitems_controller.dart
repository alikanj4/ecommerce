import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:get/get.dart';

abstract class ResturantItemsController extends GetxController {
  gotocart();
  gotoprudectdetils();
}

class ResturantItemsControllerControllerImp extends ResturantItemsController {
  @override
  gotocart() {
    Get.toNamed(AppRoute.cart);
  }

  @override
  gotoprudectdetils() {
    Get.toNamed(AppRoute.productdetailsrest);
  }
}
