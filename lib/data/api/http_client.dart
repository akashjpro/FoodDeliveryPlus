import 'package:dio/dio.dart';
import 'package:food_delivery/data/api/json_parser/json_parser.dart';

class Request {
  final String endpoint;
  final Map<String, String> data;

  const Request({required this.endpoint, this.data = const {}});

  static final _client = Dio(BaseOptions(
    baseUrl: 'https://freeapi.code4func.com/api/v1',
    connectTimeout: 3000,
    receiveTimeout: 3000,
  ));

  Future<T> executeGet<T>(JsonParser<T> parser) async {
    final response = await _client.get<String>(endpoint);
    return parser.parseFromJson(response.data ?? "Something wrong");
  }
}
