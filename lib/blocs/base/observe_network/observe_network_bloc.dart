import 'package:base_project/base_project.dart';
import 'observe_network_event.dart';
import 'observe_network_state.dart';

// class ResponsiveBloc extends Bloc<ResponsiveEvent, ResponsiveState> {
//   ResponsiveBloc() : super(ResponsiveState().init()) {
//     on<ResponsiveEvent>((event, emit) {
//       on<InitResponsiveEvent>(_init);
//     });
//   }
//   void _init(InitResponsiveEvent event, Emitter<ResponsiveState> emit) async {}
// }

class ObserveNetworkBloc
    extends Bloc<ObserveNetworkEvent, ObserveNetworkState> {
  ObserveNetworkBloc() : super(ObserveNetworkState()) {
    on<ObserveNetworkEvent>((event, emit) {
      on<ChangeObserveNetworkEvent>(_changeStatus);
      on<ListenNetworkEvent>(_listen);
    });
  }
  // void _init(
  //     InitObserveNetworkEvent event, Emitter<ObserveNetworkState> emit) async {
  //   emit(state.setNetworkStatus(state: state, isNetworkConnected: true));
  // }

  void _changeStatus(ChangeObserveNetworkEvent event,
      Emitter<ObserveNetworkState> emit) async {
    if (state.isNetworkConnected == true) {
      emit(state.setNetworkStatus(
          state: state, isNetworkConnected: event.isNetworkConnected));
      await Future.delayed(Duration(seconds: 10));
      emit(state.setNetworkStatus(state: state, isNetworkConnected: true));
    }
  }

  void _listen(
      ListenNetworkEvent event, Emitter<ObserveNetworkState> emit) async {
    bool isNetworkConnected = await NetworkHelper.instance.checkConnection();
    emit(state.setNetworkStatus(
        state: state, isNetworkConnected: isNetworkConnected));
  }
}
