/// An abstract class representing a base state.
/// Provides methods for initializing and modifying states.
abstract class BaseState<T> {
  // Initializes a new state with initial values.
  T init();

  // Creates a new state with updated values.
  T copyWith({
    required T stateChange,
  });

  // Sets the loading status in the current state to "show".
  T loading(T stateCurrent);

  // Hides the loading status in the current state.
  T hideLoading(T stateCurrent);

  // Sets the error message in the current state.
  T setErr({required T stateCurrent, required String err});
}
