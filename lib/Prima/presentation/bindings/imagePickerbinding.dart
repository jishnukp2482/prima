import 'package:get/get.dart';

import '../manager/permissionHandlingController.dart';

class ImagePickerBinding extends Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => ImagePickerController());
  }
}