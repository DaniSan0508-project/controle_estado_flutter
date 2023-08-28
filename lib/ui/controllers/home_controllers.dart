import 'package:flutter/cupertino.dart';

class HomeControllers {
  static HomeControllers instance = HomeControllers();

  final ValueNotifier<bool> switchNotifier = ValueNotifier<bool>(false);

  bool get isSwitchActive => switchNotifier.value;

  void handleTogglerSwitch() {
    switchNotifier.value = !switchNotifier.value;
  }
}
