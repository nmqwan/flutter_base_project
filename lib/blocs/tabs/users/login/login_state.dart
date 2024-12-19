import 'package:base_project/base_project.dart';


class LoginState extends BaseState<LoginState> {
  BlocLoadingStatus? loadingStatus;
  String? errMessage;

  LoginState({
    this.loadingStatus,
    this.errMessage,
  });

  @override
  LoginState hideLoading(LoginState stateCurrent) {
    return stateCurrent.copyWith(
        stateChange: LoginState(loadingStatus: BlocLoadingStatus.hide));
  }

  @override
  LoginState loading(LoginState stateCurrent) {
    return stateCurrent.copyWith(
        stateChange: LoginState(loadingStatus: BlocLoadingStatus.show));
  }

  @override
  LoginState init() {
    return LoginState(
      loadingStatus: BlocLoadingStatus.nothing,
      errMessage: '',
    );
  }

  @override
  LoginState copyWith({required LoginState stateChange}) {
    return LoginState(
      loadingStatus: stateChange.loadingStatus ?? loadingStatus,
      errMessage: stateChange.errMessage ?? errMessage,
    );
  }

  @override
  LoginState setErr({required LoginState stateCurrent, required String err}) {
    return stateCurrent.copyWith(stateChange: LoginState(errMessage: err));
  }
}
