import 'package:flutter/material.dart';
import 'package:tng_ehr/blocs/tabs/users/user_setting/user_setting_bloc.dart';
import 'package:tng_ehr/blocs/tabs/users/user_setting/user_setting_event.dart';
import 'package:base_project/base_project.dart';

// ignore: must_be_immutable
class UserSettingView extends StatelessWidget {
  UserSettingView({super.key});
  GlobalKey homeKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          UserSettingBloc()..add(InitUserSettingEvent()),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SettingItemWidget(
              title: 'Login',
              titleTextStyle: Theme.of(context).textTheme.bodyLarge,
              trailing: Icon(Icons.keyboard_arrow_right_rounded),
              leading: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(13)),
                  child: Icon(
                    Icons.login_outlined,
                    color: Theme.of(context).primaryTextTheme.bodyMedium!.color,
                  )),
              onTap: () {
                Navigator.of(context).pushNamed(loginRoute);
              }),
          SettingItemWidget(
              title: 'Logout',
              titleTextStyle: Theme.of(context).textTheme.bodyLarge,
              trailing: Icon(Icons.keyboard_arrow_right_rounded),
              leading: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(13)),
                  child: Icon(
                    Icons.logout_outlined,
                    color: Theme.of(context).primaryTextTheme.bodyMedium!.color,
                  )),
              onTap: () {
                //
              }),
          SettingItemWidget(
              title: 'Delete Account',
              titleTextStyle: Theme.of(context).textTheme.bodyLarge,
              trailing: Icon(Icons.keyboard_arrow_right_rounded),
              leading: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(13)),
                  child: Icon(
                    Icons.no_accounts_outlined,
                    color: Theme.of(context).primaryTextTheme.bodyMedium!.color,
                  )),
              onTap: () {
                //
              }),
          SettingItemWidget(
              title: 'About',
              titleTextStyle: Theme.of(context).textTheme.bodyLarge,
              trailing: Icon(Icons.keyboard_arrow_right_rounded),
              leading: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(13)),
                  child: Icon(
                    Icons.info_outline,
                    color: Theme.of(context).primaryTextTheme.bodyMedium!.color,
                  )),
              onTap: () {
                //
              }),
        ],
      ),
    );
  }
}
