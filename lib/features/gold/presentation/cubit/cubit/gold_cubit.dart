import 'package:bloc/bloc.dart';
import 'package:mvvm_app/features/gold/data/models/gold_model.dart';
import 'package:mvvm_app/features/gold/data/repo/gold_repo.dart';

part 'gold_state.dart';

class GoldCubit extends Cubit<GoldState> {
  GoldCubit(this.goldRepo) : super(GoldInitial());
  final GoldRepo goldRepo;

  Future<void> getGold() async {
    emit(GoldLoadingState());
    final res = await goldRepo.getGold();
    res.fold(
      (error) {
        emit(GoldErroestate(message: error));
      },
      (goldModel) {
        emit(GoldSuccessState(goldModel: goldModel));
      },
    );
  }
}
