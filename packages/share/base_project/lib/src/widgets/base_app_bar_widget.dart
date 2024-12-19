import '../../base_project.dart' as b;
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BaseAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? isShowDrawer;
  bool? isShowNotitfication = true;
  final bool? isDev;
  final List<b.BaseSuffixIconModel>? lstSuff;
  final Future<bool> Function()? backFunc;
  final BuildContext context;
  BaseAppBarWidget(
      {super.key,
      required this.title,
      required this.isDev,
      required this.context,
      this.lstSuff,
      this.isShowDrawer,
      this.isShowNotitfication,
      this.backFunc});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    b.setStatusBarColor(Colors.transparent);
    return AppBar(
      iconTheme: const IconThemeData(
          // , //change your color here
          ),
      leading: isShowDrawer == true
          ? IconButton(
              icon: ImageIcon(
                AssetImage(b.TrungNguyenAsset.iconDrawer),
                //
              ),
              onPressed: () async {
                Scaffold.of(context).openDrawer();
              })
          : null,
      elevation: 0,
      centerTitle: true,
      title: Text(
        isDev == true ? "DEV: ${title.toUpperCase()}" : title.toUpperCase(),
        style: b.UITextStyle.interBoldStyle(
            fontSize: 20, fontWeight: FontWeight.w700),
      ),
      actions: _rendenSuffixAction(),
    );
  }

  _rendenSuffixAction() {
    List<Widget> result = [];
    b.BaseSuffixIconModel iconNoti = b.BaseSuffixIconModel(
        svgIcon: b.SvgPicture.asset(b.TrungNguyenAsset.iconNoti),
        calback: () {
          Navigator.of(context).pushNamed("notification");
        });
    List<b.BaseSuffixIconModel> updatedLstSuff;
    if (isShowNotitfication == true) {
      updatedLstSuff = lstSuff != null
          ? (List<b.BaseSuffixIconModel>.from(lstSuff!)..add(iconNoti))
          : [iconNoti];
    } else {
      updatedLstSuff =
          lstSuff != null ? List<b.BaseSuffixIconModel>.from(lstSuff!) : [];
    }
    for (var item in updatedLstSuff) {
      result.add(IconButton(
        icon: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffDFF7E2),
          ),
          padding: EdgeInsets.all(8),
          child: item.icon != null
              ? Icon(
                  item.icon,
                  size: 24,
                )
              : item.svgIcon!,
        ),
        onPressed: () {
          item.calback();
        },
      ));
    }
    return result;
  }
}
