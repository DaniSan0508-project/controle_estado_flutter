import 'package:estado_teste/ui/components/custom_toggle_theme_switch.dart';
import 'package:estado_teste/ui/controllers/home_controllers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: HomeControllers.instance.switchNotifier,
      builder: (context, isSwitchActive, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("App Teste"),
            actions: [
              CustomToggleThemeSwitch(),
            ],
          ),
          body: Center(
            child: CustomToggleThemeSwitch(),
          ),
        );
      },
    );
  }
}



