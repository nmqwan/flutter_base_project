import 'package:flutter/material.dart';
import 'package:base_project/base_project.dart';
import 'package:tng_ehr/blocs/tabs/notification/notification_bloc.dart';
import 'package:tng_ehr/blocs/tabs/notification/notification_event.dart';

// ignore: must_be_immutable
class NotificationView extends StatelessWidget {
  NotificationView({super.key});
  GlobalKey homeKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          NotificationBloc()..add(InitNotificationEvent()),
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
        child: Text("Notification"),
      ),
    );
  }
}
