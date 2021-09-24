import 'package:freezed_annotation/freezed_annotation.dart';

part 'images_response.freezed.dart';
part 'images_response.g.dart';

@freezed
class ImagesResponse with _$ImagesResponse {
  const factory ImagesResponse({
    String? imageUrl,
  }) = _ImagesResponse;

  factory ImagesResponse.fromJson(Object? json) =>
      _$ImagesResponseFromJson(json as Map<String, dynamic>);
}
