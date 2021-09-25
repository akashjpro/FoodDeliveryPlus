import 'package:dio/dio.dart';
import 'package:food_delivery/model/response/base_response.dart';
import 'package:food_delivery/model/request/request.dart';
import 'package:food_delivery/model/response/base_response_no_data.dart';
import 'package:food_delivery/service/api_client.dart';
import 'package:food_delivery/service/server_error.dart';

class ApiHelper {
  // // Optional: Due to self sign cert issue
  // (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
  //     (HttpClient client) {
  //   client.badCertificateCallback =
  //       (X509Certificate cert, String host, int port) => true;
  //   return client;
  // };
  //

  final client = ApiClient(Dio());

  Future<void> requestAPI<T>(Request request, Future<BaseResponse<T>> future,
      onSuccess(T data), onFail(ServerError err)) async {
    try {
      await future.then((it) => onSuccess(it.data));
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      onFail(ServerError.withError(error: error as DioError));
    }
  }

  Future<void> requestAPINoData<T>(
      Request request,
      Future<BaseResponseNoDaTa<T>> future,
      onSuccess(String data),
      onFail(ServerError err)) async {
    try {
      await future.then((it) => onSuccess(it.data));
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      onFail(ServerError.withError(error: error as DioError));
    }
  }
}
