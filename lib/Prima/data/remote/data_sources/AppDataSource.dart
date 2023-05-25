
import '../../../core/api_provider.dart';
import '../modals/CustomApiModal.dart';
import '../modals/branchListModal.dart';
import '../modals/customerRequestModal.dart';
import '../modals/customerResponseModal.dart';
import '../remoteRoutes/AppRemotes.dart';

abstract class AppDataSource {
  Future<CustomApiModal> verifyMobile(String phoneNo);
  Future<CustomerCreationResponseModal> savecustomer(CustomerCreationRequestModal requestModal);
  Future<BranchListModal> branchListCode();

}

class AppDataSourceImpl extends AppDataSource {
  final ApiProvider apiProvider;

  AppDataSourceImpl(this.apiProvider);

  @override
  Future<CustomApiModal> verifyMobile(String phoneNo) async {
    final data =
        await apiProvider.get('${AppRemoteRoutes.oTP}MobileNo=$phoneNo');
    return CustomApiModal.fromJson(data);
  }

  @override
  Future<CustomerCreationResponseModal> savecustomer(CustomerCreationRequestModal requestModal) async {
    final customerData = 
        await apiProvider.post('${AppRemoteRoutes.saveCustomer}',requestModal.toJson());
    return CustomerCreationResponseModal.fromJson(customerData);
  }

  @override
  Future<BranchListModal> branchListCode() async {
    final branchData = await apiProvider.get('${AppRemoteRoutes.branchList}');
    return BranchListModal.fromJson(branchData);
  }
}
