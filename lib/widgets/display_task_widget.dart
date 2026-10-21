import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Classes/task.dart';
import '../edit_page.dart';

class DisplayTaskWidget extends StatelessWidget {
  final Task task;

  const DisplayTaskWidget({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.symmetric(vertical: 14),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 59,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(152, 135, 245, 1),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text('To Do'),
                ),
                Expanded(
                  child: Row(),
                ),

                IconButton(
                  onPressed: () {
                    Task.deleteTask(task.getId());
                  },
                  icon: Icon(Icons.delete),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(child: Text(task.getTitle(), style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'ReadexPro',

                ),)),
                IconButton(
                  onPressed: () {
                    debugPrint("${task.getId()} is check for id before passed in EditPage (475585-269178)");
                    Get.to(EditPage(id: task.getId(),));
                  },
                  icon: Icon(Icons.edit),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
