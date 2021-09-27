class AppData {
  static final AppData _instance = AppData._internal();

  static AppData get instance  => _instance;

  String _token = "";

  AppData._internal();

  String get token => _token;

  void setToken(String token) => _token = token;
}
