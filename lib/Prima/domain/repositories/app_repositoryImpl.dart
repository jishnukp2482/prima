
import '../../data/remote/data_sources/AppDataSource.dart';
import '../../data/remote/modals/CustomApiModal.dart';
import '../../data/remote/modals/branchListModal.dart';
import '../../data/remote/modals/customerRequestModal.dart';
import '../../data/remote/modals/customerResponseModal.dart';
import '../../data/repositories/app_Repository.dart';

class AppRepositoryImpl extends AppRepository{
  final AppDataSource appDataSource;

  AppRepositoryImpl(this.appDataSource);

  @override
  Future<CustomApiModal> verifyMobile(String phoneNo) {
   return appDataSource.verifyMobile(phoneNo);
  }

  @override
  Future<CustomerCreationResponseModal> savecustomer(CustomerCreationRequestModal requestModal) {
    return appDataSource.savecustomer(requestModal);
  }

  @override
  Future<BranchListModal> branchListCode() {
    return appDataSource.branchListCode();
  }
  
}