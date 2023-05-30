import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:a2sinternshipp/presentation/screen_two_container_screen/models/screen_two_container_model.dart';
part 'screen_two_container_event.dart';
part 'screen_two_container_state.dart';

class ScreenTwoContainerBloc
    extends Bloc<ScreenTwoContainerEvent, ScreenTwoContainerState> {
  ScreenTwoContainerBloc(ScreenTwoContainerState initialState)
      : super(initialState) {
    on<ScreenTwoContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScreenTwoContainerInitialEvent event,
    Emitter<ScreenTwoContainerState> emit,
  ) async {}
}
