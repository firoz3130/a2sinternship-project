// ignore_for_file: must_be_immutable

part of 'screen_two_bloc.dart';

@immutable
abstract class ScreenTwoEvent extends Equatable {}

class ScreenTwoInitialEvent extends ScreenTwoEvent {
  @override
  List<Object?> get props => [];
}
