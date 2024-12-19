import 'package:base_project/base_project.dart';

class NotificationState extends BaseState<NotificationState> {
  BlocLoadingStatus? loadingStatus;
  String? errMessage;

  NotificationState({
    this.loadingStatus,
    this.errMessage,
  });

  @override
  NotificationState hideLoading(NotificationState stateCurrent) {
    return stateCurrent.copyWith(
        stateChange: NotificationState(loadingStatus: BlocLoadingStatus.hide));
  }

  @override
  NotificationState loading(NotificationState stateCurrent) {
    return stateCurrent.copyWith(
        stateChange: NotificationState(loadingStatus: BlocLoadingStatus.show));
  }

  @override
  NotificationState init() {
    return NotificationState(
      loadingStatus: BlocLoadingStatus.nothing,
      errMessage: '',
    );
  }

  @override
  NotificationState copyWith({required NotificationState stateChange}) {
    return NotificationState(
      loadingStatus: stateChange.loadingStatus ?? loadingStatus,
      errMessage: stateChange.errMessage ?? errMessage,
    );
  }

  @override
  NotificationState setErr(
      {required NotificationState stateCurrent, required String err}) {
    return stateCurrent.copyWith(
        stateChange: NotificationState(errMessage: err));
  }
}
