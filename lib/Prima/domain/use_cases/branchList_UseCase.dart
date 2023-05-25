
import '../../core/usecase.dart';
import '../../data/remote/modals/branchListModal.dart';
import '../../data/repositories/app_Repository.dart';

class BranchListUseCase extends UseCase<BranchListModal, NoParams>{

  final AppRepository appRepository;
  BranchListUseCase(this.appRepository);

  @override
  Future<BranchListModal> call(NoParams params) {
   return appRepository.branchListCode();
  }

}