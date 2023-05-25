import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../core/respose_classify.dart';
import '../../data/remote/modals/CustomApiModal.dart';
import '../../domain/use_cases/use_case_verifyMobileNo.dart';
import '../routes/app_pages.dart';
import '../themes/appcolors.dart';

class CustomerCreationController extends GetxController {
  final VerifyMobileUseCase verifyMobileUseCase;

  CustomerCreationController(this.verifyMobileUseCase);

  final verifyMobileState = ResponseClassify<CustomApiModal>.error("").obs;
  final verifyPhoneKey = GlobalKey<FormState>();
  final phoneNoController = TextEditingController();

  verifyPhoneNo() async {
    if (verifyPhoneKey.currentState!.validate()) {
      verifyMobileState.value = ResponseClassify.loading();
      try {
        verifyMobileState.value = ResponseClassify.completed(
            await verifyMobileUseCase.call(phoneNoController.text));
        // Get.toNamed(AppPages.permissionHandling);
      } catch (e) {
        verifyMobileState.value = ResponseClassify.error('e');
      }
    }
  }

  final otpController = TextEditingController();
  final otpKey = GlobalKey<FormState>();

  getOtp() {
    if (verifyMobileState.value.status == Status.COMPLETED) {
      if (verifyMobileState.value.data!.table.isNotEmpty &&
          verifyMobileState.value.data!.table.first.OTP == otpController.text) {
        Get.toNamed(AppPages.customerCreationScreen);
      }
    } else {
      Get.snackbar("Error", 'Incorrect OTP',
          colorText: AppColors.red, backgroundColor: AppColors.primaryColor);
    }
  }
}
