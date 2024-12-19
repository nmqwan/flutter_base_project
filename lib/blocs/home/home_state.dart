import 'package:base_project/base_project.dart';

class HomeState extends BaseState<HomeState> {
  BlocLoadingStatus? loadingStatus;
  String? errMessage;
  int? tabIndex;
  List<Widget>? pages;

  HomeState({
    this.loadingStatus,
    this.errMessage,
    this.tabIndex,
    this.pages,
  });

  @override
  HomeState hideLoading(HomeState stateCurrent) {
    return stateCurrent.copyWith(
        stateChange: HomeState(loadingStatus: BlocLoadingStatus.hide));
  }

  @override
  HomeState loading(HomeState stateCurrent) {
    return stateCurrent.copyWith(
        stateChange: HomeState(loadingStatus: BlocLoadingStatus.show));
  }

  @override
  HomeState init() {
    return HomeState(
      loadingStatus: BlocLoadingStatus.nothing,
      errMessage: '',
      tabIndex: 0,
    );
  }

  initOverride(List<Widget> pages) {
    return HomeState(
        loadingStatus: BlocLoadingStatus.nothing,
        errMessage: '',
        tabIndex: 0,
        pages: pages);
  }

  @override
  HomeState copyWith({required HomeState stateChange}) {
    return HomeState(
      loadingStatus: stateChange.loadingStatus ?? loadingStatus,
      errMessage: stateChange.errMessage ?? errMessage,
      pages: stateChange.pages ?? pages,
      tabIndex: stateChange.tabIndex ?? tabIndex,
    );
  }

  @override
  HomeState setErr({required HomeState stateCurrent, required String err}) {
    return stateCurrent.copyWith(stateChange: HomeState(errMessage: err));
  }

  HomeState setTabIndex(
      {required HomeState stateCurrent, required int tabIndex}) {
    return stateCurrent.copyWith(stateChange: HomeState(tabIndex: tabIndex));
  }
}
