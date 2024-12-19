import 'package:base_project/base_project.dart';

class NewsState extends BaseState<NewsState> {
  BlocLoadingStatus? loadingStatus;
  String? errMessage;

  NewsState({
    this.loadingStatus,
    this.errMessage,
  });

  @override
  NewsState hideLoading(NewsState stateCurrent) {
    return stateCurrent.copyWith(
        stateChange: NewsState(loadingStatus: BlocLoadingStatus.hide));
  }

  @override
  NewsState loading(NewsState stateCurrent) {
    return stateCurrent.copyWith(
        stateChange: NewsState(loadingStatus: BlocLoadingStatus.show));
  }

  @override
  NewsState init() {
    return NewsState(
      loadingStatus: BlocLoadingStatus.nothing,
      errMessage: '',
    );
  }

  @override
  NewsState copyWith({required NewsState stateChange}) {
    return NewsState(
      loadingStatus: stateChange.loadingStatus ?? loadingStatus,
      errMessage: stateChange.errMessage ?? errMessage,
    );
  }

  @override
  NewsState setErr({required NewsState stateCurrent, required String err}) {
    return stateCurrent.copyWith(stateChange: NewsState(errMessage: err));
  }
}
