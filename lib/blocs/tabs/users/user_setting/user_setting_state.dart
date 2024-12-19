import 'package:base_project/base_project.dart';


class UserSettingState extends BaseState<UserSettingState> {
  BlocLoadingStatus? loadingStatus;
  String? errMessage;

  UserSettingState({
    this.loadingStatus,
    this.errMessage,
  });

  @override
  UserSettingState hideLoading(UserSettingState stateCurrent) {
    return stateCurrent.copyWith(
        stateChange: UserSettingState(loadingStatus: BlocLoadingStatus.hide));
  }

  @override
  UserSettingState loading(UserSettingState stateCurrent) {
    return stateCurrent.copyWith(
        stateChange: UserSettingState(loadingStatus: BlocLoadingStatus.show));
  }

  @override
  UserSettingState init() {
    return UserSettingState(
      loadingStatus: BlocLoadingStatus.nothing,
      errMessage: '',
    );
  }

  @override
  UserSettingState copyWith({required UserSettingState stateChange}) {
    return UserSettingState(
      loadingStatus: stateChange.loadingStatus ?? loadingStatus,
      errMessage: stateChange.errMessage ?? errMessage,
    );
  }

  @override
  UserSettingState setErr({required UserSettingState stateCurrent, required String err}) {
    return stateCurrent.copyWith(stateChange: UserSettingState(errMessage: err));
  }
}
