import 'package:get/get.dart';

import '../manager/dashBoardController.dart';

class DashBoardBindings extends Bindings{
   @override
  void dependencies() {
    Get.lazyPut(() => DashBoardController());

  }
}