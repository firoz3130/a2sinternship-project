import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:a2sinternshipp/presentation/screen_one_page/models/screen_one_model.dart';
part 'screen_one_event.dart';
part 'screen_one_state.dart';

class ScreenOneBloc extends Bloc<ScreenOneEvent, ScreenOneState> {
  ScreenOneBloc(ScreenOneState initialState) : super(initialState) {
    on<ScreenOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScreenOneInitialEvent event,
    Emitter<ScreenOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
