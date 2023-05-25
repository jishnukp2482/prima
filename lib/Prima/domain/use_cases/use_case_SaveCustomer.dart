
import '../../core/usecase.dart';
import '../../data/remote/modals/customerRequestModal.dart';
import '../../data/remote/modals/customerResponseModal.dart';
import '../../data/repositories/app_Repository.dart';

class SaveCustomerUseCase extends UseCase<CustomerCreationResponseModal, CustomerCreationRequestModal>{
  final AppRepository appRepository;

  SaveCustomerUseCase(this.appRepository);

  @override
  Future<CustomerCreationResponseModal> call(CustomerCreationRequestModal params) {
    return appRepository.savecustomer(params);
  }

}