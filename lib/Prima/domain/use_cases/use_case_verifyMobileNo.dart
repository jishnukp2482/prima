
import '../../core/usecase.dart';
import '../../data/remote/modals/CustomApiModal.dart';
import '../../data/repositories/app_Repository.dart';

class VerifyMobileUseCase extends UseCase<CustomApiModal, String>{
  final AppRepository appRepository;

  VerifyMobileUseCase(this.appRepository);

  @override
  Future<CustomApiModal> call(String params) {
    return appRepository.verifyMobile(params);
  }

}