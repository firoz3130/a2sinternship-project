import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:a2sinternshipp/presentation/frame_four_screen/models/frame_four_model.dart';
part 'frame_four_event.dart';
part 'frame_four_state.dart';

class FrameFourBloc extends Bloc<FrameFourEvent, FrameFourState> {
  FrameFourBloc(FrameFourState initialState) : super(initialState) {
    on<FrameFourInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
    on<ChangeRadioButton2Event>(_changeRadioButton2);
    on<ChangeRadioButton3Event>(_changeRadioButton3);
    on<ChangeRadioButton4Event>(_changeRadioButton4);
    on<ChangeRadioButton5Event>(_changeRadioButton5);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<FrameFourState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<FrameFourState> emit,
  ) {
    emit(state.copyWith(
      radioGroup1: event.value,
    ));
  }

  _changeRadioButton2(
    ChangeRadioButton2Event event,
    Emitter<FrameFourState> emit,
  ) {
    emit(state.copyWith(
      radioGroup2: event.value,
    ));
  }

  _changeRadioButton3(
    ChangeRadioButton3Event event,
    Emitter<FrameFourState> emit,
  ) {
    emit(state.copyWith(
      radioGroup3: event.value,
    ));
  }

  _changeRadioButton4(
    ChangeRadioButton4Event event,
    Emitter<FrameFourState> emit,
  ) {
    emit(state.copyWith(
      radioGroup4: event.value,
    ));
  }

  _changeRadioButton5(
    ChangeRadioButton5Event event,
    Emitter<FrameFourState> emit,
  ) {
    emit(state.copyWith(
      radioGroup5: event.value,
    ));
  }

  _onInitialize(
    FrameFourInitialEvent event,
    Emitter<FrameFourState> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
      radioGroup1: "",
      radioGroup2: "",
      radioGroup3: "",
      radioGroup4: "",
      radioGroup5: "",
    ));
  }
}
