import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../controllers/home_controllers.dart';

class CustomToggleThemeSwitch extends StatefulWidget {
  const CustomToggleThemeSwitch({Key? key}) : super(key: key);

  @override
  State<CustomToggleThemeSwitch> createState() => _CustomToggleThemeSwitchState();
}

class _CustomToggleThemeSwitchState extends State<CustomToggleThemeSwitch> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: HomeControllers.instance.isSwitchActive,
      onChanged: (bool value) {
        HomeControllers.instance.handleTogglerSwitch();
      },
    );
  }
}
