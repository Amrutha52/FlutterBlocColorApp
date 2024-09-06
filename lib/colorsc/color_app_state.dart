part of 'color_app_bloc.dart';


class ColorAppState
{
  Color scaffoldBg = Colors.white;
  ColorAppState({required this.scaffoldBg});
}

final class ColorAppInitial extends ColorAppState {
  ColorAppInitial({required super.scaffoldBg});
}
