// ignore_for_file: must_be_immutable

part of 'screen_two_container_bloc.dart';

@immutable
abstract class ScreenTwoContainerEvent extends Equatable {}

class ScreenTwoContainerInitialEvent extends ScreenTwoContainerEvent {
  @override
  List<Object?> get props => [];
}
