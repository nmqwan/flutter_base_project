class ObserveNetworkState {
  final bool? isNetworkConnected;

  ObserveNetworkState({this.isNetworkConnected = true});

  ObserveNetworkState copyWith({required ObserveNetworkState state}) {
    return ObserveNetworkState(
      isNetworkConnected: state.isNetworkConnected ?? isNetworkConnected,
    );
  }

  ObserveNetworkState setNetworkStatus(
      {required ObserveNetworkState state, required bool isNetworkConnected}) {
    return state.copyWith(
        state: ObserveNetworkState(isNetworkConnected: isNetworkConnected));
  }
}
