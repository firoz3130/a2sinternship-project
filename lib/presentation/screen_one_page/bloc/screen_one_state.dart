// ignore_for_file: must_be_immutable

part of 'screen_one_bloc.dart';

class ScreenOneState extends Equatable {
  ScreenOneState({
    this.searchController,
    this.screenOneModelObj,
  });

  TextEditingController? searchController;

  ScreenOneModel? screenOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        screenOneModelObj,
      ];
  ScreenOneState copyWith({
    TextEditingController? searchController,
    ScreenOneModel? screenOneModelObj, required List<String> itemNames,
  }) {
    return ScreenOneState(
      searchController: searchController ?? this.searchController,
      screenOneModelObj: screenOneModelObj ?? this.screenOneModelObj,
    );
  }
}
