import 'package:base_project/base_project.dart';
import 'news_state.dart';
import 'news_event.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsState().init()) {
    on<InitNewsEvent>(_init);
  }

  void _init(InitNewsEvent event, Emitter<NewsState> emit) async {
    emit(state.init());
  }
}
