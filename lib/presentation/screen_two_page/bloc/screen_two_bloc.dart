import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:a2sinternshipp/presentation/screen_two_page/models/screen_two_model.dart';
part 'screen_two_event.dart';
part 'screen_two_state.dart';

class ScreenTwoBloc extends Bloc<ScreenTwoEvent, ScreenTwoState> {
  ScreenTwoBloc(ScreenTwoState initialState) : super(initialState) {
    on<ScreenTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScreenTwoInitialEvent event,
    Emitter<ScreenTwoState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      groupfifteenController: TextEditingController(),
      groupfourteenController: TextEditingController(),
    ));
  }
}
