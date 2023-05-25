import 'package:get/get.dart';
import 'package:task_mgmt/Prima/presentation/manager/DepositController.dart';

class DepositControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DepositController());
  }
}
