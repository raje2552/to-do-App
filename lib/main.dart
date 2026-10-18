import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:untitled3/page_tasks.dart';
import 'package:untitled3/sign_up.dart';
import 'database/controllers_shared_pref.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ControllerSharedPref.initSharedPreferences();

  runApp(SetScreen(isLogin:
  ControllerSharedPref.sharedPref.containsKey('username') ? ControllerSharedPref
      .sharedPref
      .get("username")
      .toString()
      .isNotEmpty :false)
  );
}

class SetScreen extends StatelessWidget {
  final bool isLogin = false;

  const SetScreen({super.key, required bool isLogin});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLogin ? PageTasks() : SignUpScreen(),
    );
  }
}
