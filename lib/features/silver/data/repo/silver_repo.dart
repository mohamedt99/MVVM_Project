import 'package:dartz/dartz.dart';
import 'package:mvvm_app/core/networking/api_constants.dart';
import 'package:mvvm_app/core/networking/dio_helper.dart';
import 'package:mvvm_app/features/silver/data/model/silver_model.dart';

class SilverRepo {
  Future<Either<String, SilverModel>> getSilver() async {
    try {
      final res = await DioHelper.getData(endPoint: ApiConstants.goldEndPoint);
      return right( SilverModel.fromJson(res.data));
    } catch (e) {
      return left(e.toString());
    }
  }
}