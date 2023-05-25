import 'package:get/get.dart';

import '../manager/slideImg_Controller.dart';

class ImgBindings extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => ImgController());
  }
}