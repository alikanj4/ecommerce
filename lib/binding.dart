import 'package:ecomercekhaled/controller/auth/signup_controller.dart';
import 'package:get/get.dart';

import 'core/class/curd.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    Get.put(Curd());
  }
}
