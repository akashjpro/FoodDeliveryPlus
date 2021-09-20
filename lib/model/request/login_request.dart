import 'package:food_delivery/model/request/request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_request.g.dart';

@JsonSerializable()
class LoginRequest extends Request {
  String email;
  String password;

  LoginRequest(this.email, this.password);

  @override
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
