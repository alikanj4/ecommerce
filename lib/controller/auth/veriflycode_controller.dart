import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:get/get.dart';

abstract class VerifycodeController extends GetxController {
  verifycode();
  toverifycodecontroller();

  topasswordcontroller();
}

class VerifycodeControllerTmp extends VerifycodeController {
  late String vercode;
  @override
  verifycode() {}

  @override
  topasswordcontroller() {
    // Get.offNamed(Approute.resertpassword);
  }

  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }

  @override
  toverifycodecontroller() {
    Get.toNamed(AppRoute.resertpassword);
  }
}
