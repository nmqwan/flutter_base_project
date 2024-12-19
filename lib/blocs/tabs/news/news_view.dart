import 'package:flutter/material.dart';
import 'package:base_project/base_project.dart';
import 'package:tng_ehr/blocs/tabs/news/news_bloc.dart';
import 'package:tng_ehr/blocs/tabs/news/news_event.dart';

// ignore: must_be_immutable
class NewsView extends StatelessWidget {
  NewsView({super.key});
  GlobalKey homeKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => NewsBloc()..add(InitNewsEvent()),
      child: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return BaseScaffold(
      globalKey: GlobalKey(),
      appBar: BaseAppBarWidget(
        context: context,
        isDev: RunConfig.isDev,
        key: homeKey,
        title: "TNG PORTAL",
      ),
      body: Center(
        child: TextField(),
      ),
    );
  }
}
