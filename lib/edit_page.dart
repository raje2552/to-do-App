import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:untitled3/page_tasks.dart';

import 'Classes/task.dart';

class EditPage extends StatefulWidget {
  final int id ;

  const EditPage({super.key, required this.id});

  @override
  State<EditPage> createState() => _EditPageState(id: id);
}

class _EditPageState extends State<EditPage> {
  int id;
  _EditPageState({required this.id});
  late TextEditingController  controller = TextEditingController(text: Task.tasks[id].getTitle());

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
                  'you can edit task !??! ',
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
                print("${widget.id} is this id is passed error number (1544-4856) ");
                if (controller.text.isNotEmpty) {
                  print("${Task.tasks[widget.id].getTitle()} this old title  error number (46887-48268)");
                  Task.tasks[widget.id].setTitle(controller.text);
                  print("${Task.tasks[widget.id].getTitle()} this new title  error number (46887-48268)");

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
