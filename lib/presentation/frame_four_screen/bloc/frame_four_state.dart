// ignore_for_file: must_be_immutable

part of 'frame_four_bloc.dart';

class FrameFourState extends Equatable {
  FrameFourState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.radioGroup2 = "",
    this.radioGroup3 = "",
    this.radioGroup4 = "",
    this.radioGroup5 = "",
    this.frameFourModelObj,
  });

  FrameFourModel? frameFourModelObj;

  String radioGroup;

  String radioGroup1;

  String radioGroup2;

  String radioGroup3;

  String radioGroup4;

  String radioGroup5;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        radioGroup2,
        radioGroup3,
        radioGroup4,
        radioGroup5,
        frameFourModelObj,
      ];
  FrameFourState copyWith({
    String? radioGroup,
    String? radioGroup1,
    String? radioGroup2,
    String? radioGroup3,
    String? radioGroup4,
    String? radioGroup5,
    FrameFourModel? frameFourModelObj,
  }) {
    return FrameFourState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      radioGroup2: radioGroup2 ?? this.radioGroup2,
      radioGroup3: radioGroup3 ?? this.radioGroup3,
      radioGroup4: radioGroup4 ?? this.radioGroup4,
      radioGroup5: radioGroup5 ?? this.radioGroup5,
      frameFourModelObj: frameFourModelObj ?? this.frameFourModelObj,
    );
  }
}
