class AppData {
  static final AppData _singleton = AppData._internal();

  var _token = "";

  factory AppData() {
    return _singleton;
  }

  AppData._internal();

  String getToken() => this._token;

  void setToken(String token) => _token = token;
}
