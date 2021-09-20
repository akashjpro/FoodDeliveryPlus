export 'food_parser.dart';

import 'dart:convert';

abstract class JsonParser<T> {
  const JsonParser();
  Future<T> parseFromJson(String json);
}

mixin ObjectDecoder<T> on JsonParser<T> {
  Map<String, dynamic> decodeJsonObject(String json) =>
      jsonDecode(json) as Map<String, dynamic>;
}

mixin ListDecoder<T> on JsonParser<T> {
  List<dynamic> decodeJsonList(String json) =>
      jsonDecode(json)['data'] as List<dynamic>;
}
