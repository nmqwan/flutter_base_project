part of 'responsive_bloc.dart';

class ResponsiveState {
  final String? layout;

  ResponsiveState({this.layout});
  ResponsiveState init() {
    return ResponsiveState(layout: LTABLET);
  }

  ResponsiveState copyWith({required ResponsiveState state}) {
    return ResponsiveState(
      layout: state.layout ?? layout,
    );
  }

  ResponsiveState setVersionCode(
      {required ResponsiveState state, required String layout}) {
    return state.copyWith(state: ResponsiveState(layout: layout));
  }
}
