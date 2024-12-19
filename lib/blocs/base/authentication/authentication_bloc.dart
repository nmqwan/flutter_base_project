/// A simple authentication BLoC that manages the authentication state of the app.
///
/// The BLoC listens to events from the UI and updates the authentication state accordingly.
/// It also provides methods to log in and log out.
library;

import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:base_project/base_project.dart';
 import 'package:users/users.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

/// The authentication BLoC. 
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required IAuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const AuthenticationState.unknown()) {
    /// Register event handlers.
    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
    on<AuthenticationInit>(_onAuthenticationInit);
  }

  /// The authentication repository.
  final IAuthRepository _authRepository;

  /// The stream subscription for the authentication status.
  late StreamSubscription<AuthenticationStatus>
      _authenticationStatusSubscription;

  @override
  Future<void> close() {
    /// Cancel the authentication status subscription.
    _authenticationStatusSubscription.cancel();

    /// Dispose the authentication repository.
    _authRepository.dispose();

    /// Close the BLoC.
    return super.close();
  }

  /// Handles the `AuthenticationStatusChanged` event.
  void _onAuthenticationStatusChanged(
    AuthenticationStatusChanged event,
    Emitter<AuthenticationState> emit,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return emit(const AuthenticationState.unauthenticated());
      case AuthenticationStatus.authenticated:

        //!Lấy thông tin user by token
        //!emit auth hoặc unAuth nếu user get được null
        // final user = await _tryGetUser();
        // return emit(user != null
        //     ? AuthenticationState.authenticated(user)
        //     : const AuthenticationState.unauthenticated());
        return emit(const AuthenticationState.authenticated());
      default:
        return emit(const AuthenticationState.unknown());
    }
  }

  /// Listens to the `AuthenticationLogoutRequested` event and logs out the user.
  void _onAuthenticationLogoutRequested(
    AuthenticationLogoutRequested event,
    Emitter<AuthenticationState> emit,
  ) async {
    await _authRepository.logOut();
  }

  /// Listens to the `AuthenticationInit` event and sets up a listener for the authentication status.
  void _onAuthenticationInit(
    AuthenticationInit event,
    Emitter<AuthenticationState> emit,
  ) async {
    _authRepository.status.listen((status) {
      add(AuthenticationStatusChanged(event.status));
    });
  }
}
