import 'package:bloc/bloc.dart';
import 'package:mvvm_app/features/silver/data/repo/silver_repo.dart';
import 'package:mvvm_app/features/silver/presentation/cubit/cubit/silver_state.dart';


class SilverCubit extends Cubit<SilverState> {
  SilverCubit(this.silverRepo) : super(SilverInitial());
  final SilverRepo silverRepo;

  Future<void> getSilver() async {
    emit(SilverLoadingState());
    final res = await silverRepo.getSilver();
    res.fold(
      (error) {
        emit(SilverErroestate(message: error));
      },
      (silverModel) {
        emit(SilverSuccessState(silverModel: silverModel));
      },
    );
  }
}
