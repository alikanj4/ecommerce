import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:get/get.dart';

abstract class SuccessResertPasswordController extends GetxController {
  gotoLogin();
}

class SuccessResertPasswordControllerTmp
    extends SuccessResertPasswordController {
  @override
  gotoLogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
