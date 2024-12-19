abstract class ObserveNetworkEvent {}

class ListenNetworkEvent extends ObserveNetworkEvent {}

class InitObserveNetworkEvent extends ObserveNetworkEvent {}

class ChangeObserveNetworkEvent extends ObserveNetworkEvent {
  bool isNetworkConnected;
  ChangeObserveNetworkEvent({required this.isNetworkConnected});
}
