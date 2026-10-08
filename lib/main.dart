import 'package:flutter/material.dart';
import 'package:untitled3/addTaskScreen.dart';
import 'package:untitled3/page_tasks.dart';
import 'package:untitled3/sign_up.dart';

import 'database/controllers_shared_pref.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ControllerSharedPref.initSharedPreferences();
  String screen = '/sign_up_screen' ;
 if(ControllerSharedPref.sharedPref.containsKey('username')){
   if(ControllerSharedPref.sharedPref.get("username").toString().isNotEmpty){
     screen = '/PageTasks';
   }
 }


  runApp(SetScreen(screen: screen));
}

class SetScreen extends StatelessWidget {
  String screen;

  SetScreen({super.key, this.screen = '/sign_up_screen'});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: screen,
      routes: {
        '/sign_up_screen': (context) => SignUpScreen(),
        '/PageTasks': (context) => PageTasks(),
        '/add_task' : (context) => AddTaskScreen()
      },
    );
  }
}
