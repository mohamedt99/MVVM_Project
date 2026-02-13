import 'package:dio/dio.dart';
import 'package:mvvm_app/core/networking/api_constants.dart';

class DioHelper {
  static late Dio dio;
  static init() {
    dio = Dio()
      ..options.baseUrl = ApiConstants.baseUrl
      ..options.receiveDataWhenStatusError = false
      ..options.connectTimeout = Duration(seconds: 20)
      ..options.receiveTimeout = Duration(seconds: 20);
  }

  static Future<Response> getData({
    required String endPoint,
    Map<String, dynamic>? queryParameter,
  }) async {
    final res = await dio.get(endPoint, queryParameters: queryParameter);
    return res;
  }
}
