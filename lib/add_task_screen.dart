import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:untitled3/Classes/task.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
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
            Gap(32),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Add Task',
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
                Icon(Icons.add_box_outlined, size: 24),
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
                  Task task = Task(
                    id: Task.tasks.length ,
                    title: controller.text,
                  );
                  Task.addTask(task);
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
