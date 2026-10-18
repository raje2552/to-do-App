import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../Classes/task.dart';

class CardDisplay extends StatelessWidget {
  final int count;
  final Icon image;
  final String text;
  final Color background;
  final int checkDone;

  const CardDisplay({
    super.key,
    required this.count,
    required this.image,
    required this.text,
    this.background = Colors.white,
    required this.checkDone
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: background,
      ),
      width: 170,
      height: 100,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.12),
              borderRadius: BorderRadius.circular(12),
            ),
            child: image,
          ),
          Obx((){
            return Text(
              '${Task.taskIsDoneOrNot()[checkDone]}',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 0.87),
                fontFamily: 'ReadexPro',
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            );},
          ),

          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(255, 255, 255, 0.87),
              fontFamily: 'ReadexPro',
            ),
          ),
        ],
      ),
    );
  }
}
