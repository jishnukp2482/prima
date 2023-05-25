
import '../remote/modals/CustomApiModal.dart';
import '../remote/modals/branchListModal.dart';
import '../remote/modals/customerRequestModal.dart';
import '../remote/modals/customerResponseModal.dart';

abstract class AppRepository{
  Future<CustomApiModal> verifyMobile(String phoneNo);
  Future<CustomerCreationResponseModal> savecustomer(CustomerCreationRequestModal requestModal);
  Future<BranchListModal> branchListCode();
}