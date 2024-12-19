import 'package:base_project/base_project.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState().init()) {
    on<InitLoginEvent>(_init);
  }

  void _init(InitLoginEvent event, Emitter<LoginState> emit) async {
    emit(state.init());
  }
}
