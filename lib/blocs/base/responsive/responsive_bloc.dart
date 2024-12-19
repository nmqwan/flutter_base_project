import 'package:base_project/base_project.dart';

part 'responsive_event.dart';
part 'responsive_state.dart';

class ResponsiveBloc extends Bloc<ResponsiveEvent, ResponsiveState> {
  ResponsiveBloc() : super(ResponsiveState().init()) {
    on<ResponsiveEvent>((event, emit) {
      on<InitResponsiveEvent>(_init);
    });
  }
  void _init(InitResponsiveEvent event, Emitter<ResponsiveState> emit) async {}
}
