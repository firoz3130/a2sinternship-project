import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:a2sinternshipp/presentation/frame_three_screen/models/frame_three_model.dart';
part 'frame_three_event.dart';
part 'frame_three_state.dart';

class FrameThreeBloc extends Bloc<FrameThreeEvent, FrameThreeState> {
  FrameThreeBloc(FrameThreeState initialState) : super(initialState) {
    on<FrameThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    FrameThreeInitialEvent event,
    Emitter<FrameThreeState> emit,
  ) async {
    emit(state.copyWith(
      groupfiveController: TextEditingController(),
      supplydetailsController: TextEditingController(),
    ));
  }
}
