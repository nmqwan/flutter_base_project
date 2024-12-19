import 'package:flutter/cupertino.dart';

class BaseSuffixIconModel {
  IconData? icon;
  Function calback;
  Widget? svgIcon;
  BaseSuffixIconModel({
    this.icon,
    this.svgIcon,
    required this.calback,
  });
}
