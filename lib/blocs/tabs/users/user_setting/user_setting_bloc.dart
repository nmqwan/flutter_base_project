import 'package:base_project/base_project.dart';

import 'package:tng_ehr/blocs/tabs/users/user_setting/user_setting_event.dart';
import 'package:tng_ehr/blocs/tabs/users/user_setting/user_setting_state.dart';

class UserSettingBloc extends Bloc<UserSettingEvent, UserSettingState> {
  UserSettingBloc() : super(UserSettingState().init()) {
    on<InitUserSettingEvent>(_init);
  }

  void _init(InitUserSettingEvent event, Emitter<UserSettingState> emit) async {
    emit(state.init());
  }
}
