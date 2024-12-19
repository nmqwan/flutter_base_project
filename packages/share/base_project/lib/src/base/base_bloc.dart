import '../../base_project.dart';

abstract class BaseBloc<T> {
  void loading(Emitter<T> emit);

  void hideLoading(Emitter<T> emit);
  void setErr({required Emitter<T> emit, required String err});
}
