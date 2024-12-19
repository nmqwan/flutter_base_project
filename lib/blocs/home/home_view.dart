import 'package:flutter/material.dart';
import 'package:tng_ehr/blocs/home/home_state.dart';
import 'package:tng_ehr/blocs/tabs/news/news_view.dart';
import 'package:tng_ehr/blocs/tabs/notification/notification_view.dart';
import 'package:tng_ehr/blocs/tabs/users/user_setting/user_setting_view.dart';
import 'home_bloc.dart';
import 'home_event.dart';
import 'package:base_project/base_project.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({super.key});
  get homeKey => GlobalKey();
  List<Widget> pages = <Widget>[
    NewsView(),
    UserSettingView(),
    NotificationView(),
    UserSettingView(),
  ];
  PageController? _pageController;
  HomeBloc? _bloc;
  @override
  Widget build(BuildContext context) {
    _pageController = PageController();

    return BlocProvider(
      create: (BuildContext context) => HomeBloc()..add(InitHomeEvent(pages)),
      child: _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: PageView(
            controller: _pageController,
            children: pages,
            onPageChanged: (v) {
              _bloc?.add(ChangeTabIndexHomeEvent(v, _pageController!));
            },
          ),
        ),
        BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            _bloc = BlocProvider.of<HomeBloc>(context);
            return Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    child: BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        return BottomNavigationBar(
                          onTap: (value) {
                            log('BottomNavigationBar $value');

                            // _pageController?.animateToPage(value,
                            //     duration: Duration(milliseconds: 500),
                            //     curve: Curves.easeOut);

                            _pageController
                                ?.animateToPage(value,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.easeOut)
                                .then((onValue) {
                              _bloc?.add(ChangeTabIndexHomeEvent(
                                  value, _pageController!));
                            });

                            //
                          },
                          items: <BottomNavigationBarItem>[
                            bottomNavigationBarTNG(
                                icon: Icons.home_outlined,
                                context: context,
                                indexSelected: state.tabIndex,
                                tabindex: 0,
                                label: 'Home'),
                            bottomNavigationBarTNG(
                                icon: Icons.task_outlined,
                                context: context,
                                indexSelected: state.tabIndex,
                                tabindex: 1,
                                label: 'Tasks'),
                            bottomNavigationBarTNG(
                                icon: Icons.notification_important_outlined,
                                context: context,
                                indexSelected: state.tabIndex,
                                tabindex: 2,
                                label: 'Notification'),
                            bottomNavigationBarTNG(
                                icon: Icons.settings_outlined,
                                context: context,
                                indexSelected: state.tabIndex,
                                tabindex: 3,
                                label: 'Setting'),
                          ],
                        );
                      },
                    ),
                  )),
            );
          },
        )
      ],
    );
  }

  BottomNavigationBarItem bottomNavigationBarTNG(
      {required BuildContext context,
      required indexSelected,
      required tabindex,
      required IconData icon,
      required String label}) {
    return BottomNavigationBarItem(
        icon: Container(
            width: 50,
            height: 40,
            decoration: BoxDecoration(
                color: indexSelected == tabindex
                    ? Theme.of(context).primaryColor
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(17)),
            child: Icon(
              icon,
              color: indexSelected == tabindex
                  ? Theme.of(context).primaryTextTheme.bodyMedium!.color
                  : Theme.of(context).iconTheme.color,
            )),
        label: label);
  }
}
