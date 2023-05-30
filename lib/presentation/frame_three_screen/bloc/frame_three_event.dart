// ignore_for_file: must_be_immutable

part of 'frame_three_bloc.dart';

@immutable
abstract class FrameThreeEvent extends Equatable {}

class FrameThreeInitialEvent extends FrameThreeEvent {
  @override
  List<Object?> get props => [];
}
