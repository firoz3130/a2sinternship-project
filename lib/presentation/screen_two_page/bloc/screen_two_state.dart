// ignore_for_file: must_be_immutable

part of 'screen_two_bloc.dart';

class ScreenTwoState extends Equatable {
  ScreenTwoState({
    this.searchController,
    this.groupfifteenController,
    this.groupfourteenController,
    this.screenTwoModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? groupfifteenController;

  TextEditingController? groupfourteenController;

  ScreenTwoModel? screenTwoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        groupfifteenController,
        groupfourteenController,
        screenTwoModelObj,
      ];
  ScreenTwoState copyWith({
    TextEditingController? searchController,
    TextEditingController? groupfifteenController,
    TextEditingController? groupfourteenController,
    ScreenTwoModel? screenTwoModelObj,
  }) {
    return ScreenTwoState(
      searchController: searchController ?? this.searchController,
      groupfifteenController:
          groupfifteenController ?? this.groupfifteenController,
      groupfourteenController:
          groupfourteenController ?? this.groupfourteenController,
      screenTwoModelObj: screenTwoModelObj ?? this.screenTwoModelObj,
    );
  }
}
