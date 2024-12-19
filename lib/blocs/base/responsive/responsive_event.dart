part of 'responsive_bloc.dart';

abstract class ResponsiveEvent {}

class InitResponsiveEvent extends ResponsiveEvent {}

class ChangeResponsiveEvent extends ResponsiveEvent {
  String layout;
  ChangeResponsiveEvent({required this.layout});
}
