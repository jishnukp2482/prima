import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DepositController extends GetxController {
  RxInt selectedtabindex = 0.obs;
  changetabindex(int index) {
    selectedtabindex.value = index;
  }
}
