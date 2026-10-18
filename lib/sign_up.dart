import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:untitled3/page_tasks.dart';

import 'database/controllers_shared_pref.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tudee",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'CherryBomb',
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Color.fromRGBO(73, 186, 242, 1),
      ),
      backgroundColor: Color.fromRGBO(252, 232, 232, 1),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(38),
            Text(
              'Let\'s get started',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 32,
                fontFamily: 'ReadexPro',
                letterSpacing: -2,
                fontStyle: FontStyle.normal,
              ),
            ),
            Gap(26),
            Text(
              'What should we call you?',
              style: TextStyle(
                color: Colors.grey,
                fontFamily: 'ReadexPro',
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Gap(19),

            TextField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.grey,
                  ),
                ),
                hint: Text(
                  'Your name',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'ReadexPro',
                  ),
                ),
              ),
            ),

            Gap(42),

            InkWell(
              onTap: () {
                if (controller.text.isNotEmpty) {
                  ControllerSharedPref.setData(
                    key: 'username',
                    value: controller.text,
                  );
                  Get.off(PageTasks());
                }
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      fontFamily: 'DM_Sans',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
