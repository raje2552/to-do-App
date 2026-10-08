import 'package:flutter/material.dart';

class DisplayTaskWidget extends StatelessWidget {
  const DisplayTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.symmetric(vertical: 14),
      width: double.infinity,
      height: 111,
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(16),
      color: Colors.red,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text("dfvsdfsd")],
        ),
      ),
    );
  }
}
