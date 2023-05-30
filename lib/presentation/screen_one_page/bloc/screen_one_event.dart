// ignore_for_file: must_be_immutable

part of 'screen_one_bloc.dart';

@immutable
abstract class ScreenOneEvent extends Equatable {}

class ScreenOneInitialEvent extends ScreenOneEvent {
  @override
  List<Object?> get props => [];
}
