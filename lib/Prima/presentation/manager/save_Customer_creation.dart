import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../core/respose_classify.dart';
import '../../core/usecase.dart';
import '../../data/remote/modals/branchListModal.dart';
import '../../domain/use_cases/branchList_UseCase.dart';
import '../../domain/use_cases/use_case_SaveCustomer.dart';

class SaveCustomerController extends GetxController{
  final SaveCustomerUseCase saveCustomerUseCase;
  final BranchListUseCase branchListUseCase;

  SaveCustomerController(this.saveCustomerUseCase, this.branchListUseCase,);
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final middleName = TextEditingController();
  final emailId = TextEditingController();
  final cniNic = TextEditingController();
  final address1 = TextEditingController();
  final address2 = TextEditingController();
  final cityTown = TextEditingController();
  final region = TextEditingController();
  final country = TextEditingController();

  final verifybranchList = ResponseClassify<BranchListModal>.error('').obs;
  final verifyFormKey = GlobalKey<FormState>();

  verifybranchListCode() async {
    verifybranchList.value = ResponseClassify.loading();
      try{
        verifybranchList.value = ResponseClassify.completed(
          await branchListUseCase.call(NoParams()));
      }
      catch(e){
        verifybranchList.value = ResponseClassify.error('e');
    }
  }
}