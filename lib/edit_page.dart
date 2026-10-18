import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'Classes/task.dart';

class EditPage extends StatefulWidget {
  final Task task;

  const EditPage({super.key, required this.task});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  TextEditingController get controller => TextEditingController(text: widget.task.getTitle());

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
            Gap(32),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Edit Task',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      fontFamily: 'ReadexPro',
                      letterSpacing: -2,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Icon(Icons.edit, size: 24),
              ],
            ),
            Gap(35),

            TextField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                hint: Text(
                  'What needs to be done?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'ReadexPro',
                  ),
                ),
              ),
            ),

            Gap(19),

            InkWell(
              onTap: () {
                if (controller.text.isNotEmpty) {
                  widget.task.setTitle(controller.text);
                  Get.back();
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
                    'Save',
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
