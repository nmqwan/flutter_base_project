import 'package:base_project/base_project.dart';
import 'package:tng_ehr/blocs/splash_screen/splash_screen_event.dart';
import 'package:tng_ehr/blocs/splash_screen/splash_screen_state.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  SplashScreenBloc() : super(SplashScreenState().init()) {
    on<InitSplashScreenEvent>(_init);
  }

  void _init(
      InitSplashScreenEvent event, Emitter<SplashScreenState> emit) async {
    emit(state.init());
    await Future.delayed(const Duration(milliseconds: 500));
    emit(state.setRedirect(state, SplashScreenRedirect.home));
  }
}
