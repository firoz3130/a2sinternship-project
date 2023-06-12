import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../screen_one_page.dart';
import '/core/app_export.dart';
import 'package:a2sinternshipp/presentation/screen_one_page/models/screen_one_model.dart';
part 'screen_one_event.dart';
part 'screen_one_state.dart';

class ScreenOneBloc extends Bloc<ScreenOneEvent, ScreenOneState> {
  Stream<ScreenOneState> mapEventToState(ScreenOneEvent event) async* {
    // ...

    if (event is LoadItemNamesEvent) {
      yield state.copyWith(itemNames: await getItemNamesStream().first);
    }
  }

  ScreenOneBloc(ScreenOneState initialState) : super(initialState) {
    on<ScreenOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScreenOneInitialEvent event,
    Emitter<ScreenOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
      itemNames: [],
    ));
  }
}

class LoadItemNamesEvent {}
