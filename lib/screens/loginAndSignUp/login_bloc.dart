import 'package:bloc/bloc.dart';
import 'package:food_delivery/helper/api_helper.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ApiHelper _apiHelper;

  LoginBloc(ApiHelper apiHelper)
      : _apiHelper = apiHelper,
        super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginWithEmailPasswordButtonPressed) {
      yield* _mapLoginWithEmailPasswordToState(event);
    }
  }

  Stream<LoginState> _mapLoginWithEmailPasswordToState(
      LoginWithEmailPasswordButtonPressed event) async* {
    yield LoginLoading();
  }
}