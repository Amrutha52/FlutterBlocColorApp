
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloccolorapp/colorsc/color_app_bloc.dart';

class HomeScreen extends StatefulWidget
{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){
                context.read<ColorAppBloc>().add(ChangeColor());

              },
              child: BlocBuilder<ColorAppBloc, ColorAppState>(
                  builder: (context, state) {
                    return Container(
                      height: 70,
                      width: 200,
                      color: Colors.red,
                    );
                  }
              )
            ),
            InkWell(
              onTap: (){
                context.read<ColorAppBloc>().add(ChangeColor());

              },
              child: BlocBuilder<ColorAppBloc, ColorAppState>(
                  builder: (context, state) {
                    return Container(
                      height: 70,
                      width: 200,
                      color: Colors.yellow,
                    );
                  }
              )

            ),
            // InkWell(
            //   onTap: (){
            //     Provider.of<HomeScreenController>(context, listen: false).updateColor(Colors.orangeAccent);
            //   },
            //   child: Container(
            //     height: 70,
            //     width: 200,
            //     color: Colors.orangeAccent,
            //   ),
            // ),
            // InkWell(
            //   onTap: (){
            //     Provider.of<HomeScreenController>(context, listen: false).updateColor(Colors.blueGrey);
            //   },
            //   child: Container(
            //     height: 70,
            //     width: 200,
            //     color: Colors.blueGrey,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
