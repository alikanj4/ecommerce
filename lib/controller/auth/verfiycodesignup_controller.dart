import 'package:ecomercekhaled/core/constant/route.dart';
import 'package:get/get.dart';

abstract class VerifycodeSignUpController extends GetxController {
  gotosuccess();
}

class VerifycodeSignUpControllerTmp extends VerifycodeSignUpController {
  late String vercode;

  @override
  gotosuccess() {
    Get.toNamed(AppRoute.sucessSignUp);
  }
}
