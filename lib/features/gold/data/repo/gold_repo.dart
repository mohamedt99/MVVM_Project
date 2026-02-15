import 'package:dartz/dartz.dart';
import 'package:mvvm_app/core/networking/api_constants.dart';
import 'package:mvvm_app/core/networking/dio_helper.dart';
import 'package:mvvm_app/features/gold/data/models/gold_model.dart';

class GoldRepo {
  Future<Either<String, GoldModel>> getGold() async {
    try {
      final res = await DioHelper.getData(endPoint: ApiConstants.silverEndPoint);
      return right( GoldModel.fromJson(res.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}
