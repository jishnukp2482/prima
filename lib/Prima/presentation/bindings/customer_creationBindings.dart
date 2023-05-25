import 'package:get/get.dart';
import '../../core/api_provider.dart';
import '../../data/remote/data_sources/AppDataSource.dart';
import '../../domain/repositories/app_repositoryImpl.dart';
import '../../domain/use_cases/use_case_verifyMobileNo.dart';
import '../manager/cutomer_creationController.dart';

class CustomerCreationBindings extends Bindings{
  @override
  void dependencies() {
  Get.lazyPut(() => CustomerCreationController(VerifyMobileUseCase(AppRepositoryImpl(AppDataSourceImpl(ApiProvider())))));
  }
  
}