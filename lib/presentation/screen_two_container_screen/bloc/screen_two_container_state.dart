// ignore_for_file: must_be_immutable

part of 'screen_two_container_bloc.dart';

class ScreenTwoContainerState extends Equatable {
  ScreenTwoContainerState({this.screenTwoContainerModelObj});

  ScreenTwoContainerModel? screenTwoContainerModelObj;

  @override
  List<Object?> get props => [
        screenTwoContainerModelObj,
      ];
  ScreenTwoContainerState copyWith(
      {ScreenTwoContainerModel? screenTwoContainerModelObj}) {
    return ScreenTwoContainerState(
      screenTwoContainerModelObj:
          screenTwoContainerModelObj ?? this.screenTwoContainerModelObj,
    );
  }
}
