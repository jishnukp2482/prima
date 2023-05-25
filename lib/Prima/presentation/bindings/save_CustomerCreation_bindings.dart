import 'package:get/get.dart';

import '../../core/api_provider.dart';
import '../../data/remote/data_sources/AppDataSource.dart';
import '../../domain/repositories/app_repositoryImpl.dart';
import '../../domain/use_cases/branchList_UseCase.dart';
import '../../domain/use_cases/use_case_SaveCustomer.dart';
import '../manager/save_Customer_creation.dart';

class SaveCustomerCreationBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SaveCustomerController(SaveCustomerUseCase(AppRepositoryImpl(AppDataSourceImpl(ApiProvider()))),
    BranchListUseCase(AppRepositoryImpl(AppDataSourceImpl(ApiProvider())))
    ));
  }

}
