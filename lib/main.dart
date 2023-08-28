import 'package:estado_teste/ui/controllers/home_controllers.dart';
import 'package:estado_teste/ui/home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AnimatedBuilder(animation: HomeControllers.instance.switchNotifier, builder: (context, child){
      return MaterialApp(
        theme:ThemeData(
            primarySwatch: Colors.blueGrey,
            brightness: HomeControllers.instance.isSwitchActive ? Brightness.light : Brightness.dark,
            hintColor: Colors.blueAccent
        ),
        home: const Home(),
      );
    });
  }
}
