import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled3/database/controllers_shared_pref.dart';
import 'package:untitled3/widgets/crad_custame_widget.dart';
import 'package:untitled3/widgets/display_task_widget.dart';

import 'Classes/task.dart';

List<Task> tasks = [];

class PageTasks extends StatefulWidget {
  PageTasks({super.key});

  @override
  State<PageTasks> createState() => _PageTasksState();
}

class _PageTasksState extends State<PageTasks> {
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
      body: Container(
        color: Color.fromRGBO(252, 232, 232, 1),
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
          child: Column(
            children: [
              Gap(37),
              Container(
                height: 163,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(8),
                      Text(
                        "Welcome ${ControllerSharedPref.getData('username')}",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          fontFamily: 'ReadexPro',
                        ),
                      ),
                      Gap(8),
                      Center(
                        child: SizedBox(
                          width: 350,
                          height: 110,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              card_display(
                                text: 'done',
                                count: tasks.length,
                                image: Icon(
                                  Icons.done_outline,
                                  color: Color.fromRGBO(255, 255, 255, 0.87),
                                ),
                                background: Color.fromRGBO(118, 196, 153, 1),
                              ),
                              Gap(8),
                              card_display(
                                text: 'To do',
                                count: 0,
                                image: Icon(
                                  Icons.remove_done,
                                  color: Color.fromRGBO(255, 255, 255, 0.87),
                                ),
                                background: Color.fromRGBO(152, 135, 245, 1),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(18),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: tasks.isEmpty
                    ? Container(
                  height: 160,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'No tasks for today!',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      ),

                      Gap(4),

                      Text(
                        'Tap the + button to add your first one.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
                    : ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: DisplayTaskWidget(
                        // task: tasks[index],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 64,
        width: 64,

        decoration: BoxDecoration(
          color: Color.fromRGBO(58, 156, 205, 1),
          borderRadius: BorderRadius.circular(100),
        ),

        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/add_task");
          },
          backgroundColor: Colors.transparent,

          child: Icon(
            Icons.note_add_rounded,
            color: Color.fromRGBO(255, 255, 255, 0.87),
          ),
        ),
      ),
    );
  }
}
