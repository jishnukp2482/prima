import 'package:get/get.dart';
import 'package:task_mgmt/Prima/presentation/manager/passbookcontroller.dart';

class PassBookControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PassBookController());
  }
}
