// ignore_for_file: must_be_immutable

part of 'frame_three_bloc.dart';

class FrameThreeState extends Equatable {
  FrameThreeState({
    this.groupfiveController,
    this.supplydetailsController,
    this.frameThreeModelObj,
  });

  TextEditingController? groupfiveController;

  TextEditingController? supplydetailsController;

  FrameThreeModel? frameThreeModelObj;

  @override
  List<Object?> get props => [
        groupfiveController,
        supplydetailsController,
        frameThreeModelObj,
      ];
  FrameThreeState copyWith({
    TextEditingController? groupfiveController,
    TextEditingController? supplydetailsController,
    FrameThreeModel? frameThreeModelObj,
  }) {
    return FrameThreeState(
      groupfiveController: groupfiveController ?? this.groupfiveController,
      supplydetailsController:
          supplydetailsController ?? this.supplydetailsController,
      frameThreeModelObj: frameThreeModelObj ?? this.frameThreeModelObj,
    );
  }
}
