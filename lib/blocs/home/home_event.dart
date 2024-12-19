import 'package:flutter/material.dart';

/// Base class for all home events.
abstract class HomeEvent {}

/// Event triggered when the home page is initialized.
class InitHomeEvent extends HomeEvent {
  List<Widget> page;
  InitHomeEvent(this.page);
}

class ChangeTabIndexHomeEvent extends HomeEvent {
  int tabIndex;
  PageController controller;
  ChangeTabIndexHomeEvent(this.tabIndex, this.controller);
}
