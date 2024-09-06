import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'color_app_event.dart';
part 'color_app_state.dart';

class ColorAppBloc extends Bloc<ColorAppEvent, ColorAppState> {
  ColorAppBloc() : super(ColorAppInitial(scaffoldBg: Colors.white))
  {
    on<ChangeColor>((event, emit) {
      var s = state.scaffoldBg;
      emit(ColorAppState(scaffoldBg: s));
    });
  }
}
