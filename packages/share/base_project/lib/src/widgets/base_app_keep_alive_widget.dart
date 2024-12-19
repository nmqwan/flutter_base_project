import 'package:flutter/material.dart';

class BaseKeepAliveWidget extends StatefulWidget {
  final Widget child;

  // ignore: use_key_in_widget_constructors
  const BaseKeepAliveWidget(this.child);

  @override
  State<StatefulWidget> createState() => _KeepAliveState();
}

class _KeepAliveState extends State<BaseKeepAliveWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
}

Widget keepAliveWrapper(Widget child) => BaseKeepAliveWidget(child);
