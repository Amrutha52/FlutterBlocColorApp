import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloccolorapp/HomeScreen.dart';
import 'package:flutterbloccolorapp/colorsc/color_app_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<ColorAppBloc>(
        create: (BuildContext context) => ColorAppBloc(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: HomeScreen(),
    );
  }
}

