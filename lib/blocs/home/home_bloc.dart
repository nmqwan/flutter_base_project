// ignore_for_file: depend_on_referenced_packages

import 'package:base_project/base_project.dart';
import 'package:tng_ehr/app_config/injector.dart';
import 'package:users/services/i_auth_repository.dart';
import 'home_event.dart';
import 'home_state.dart';

/// This class manages the state of the home screen.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  /// The database used to store the user's data.
  // final LTDatabase database = getIt<LTDatabase>();
  IAuthRepository authRepository = getIt<IAuthRepository>();

  /// Creates a new instance of the bloc.
  HomeBloc() : super(HomeState().init()) {
    /// Registers an event handler for the `InitHomeEvent` event.
    on<InitHomeEvent>(_init);
    on<ChangeTabIndexHomeEvent>(_changeIndex);
  }

  /// The event handler for the `InitHomeEvent` event.
  void _init(InitHomeEvent event, Emitter<HomeState> emit) async {
    /// Initializes the state.
    emit(state.initOverride(event.page));

    /// Gets the package info data.
    PackageInfoData packageInfoData = await getPackageInfo();
    Log.info("HomeBloc: PackageInfoData", packageInfoData);
  }

  void _changeIndex(
      ChangeTabIndexHomeEvent event, Emitter<HomeState> emit) async {
    //

    emit(state.setTabIndex(stateCurrent: state, tabIndex: event.tabIndex));
  }
}
