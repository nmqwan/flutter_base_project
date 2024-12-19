import 'package:base_project/base_project.dart';
import 'package:tng_ehr/blocs/tabs/notification/notification_event.dart';
import 'package:tng_ehr/blocs/tabs/notification/notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc() : super(NotificationState().init()) {
    on<InitNotificationEvent>(_init);
  }

  void _init(
      InitNotificationEvent event, Emitter<NotificationState> emit) async {
    emit(state.init());
  }
}
