import 'package:flutter/material.dart';

class TextInputCustom extends StatelessWidget {
  final Text hint;
  final double radius;
  final bool is_obscurer ;
  final bool is_password;

  const TextInputCustom({
    super.key,
    required this.hint,
    this.is_obscurer = false,
    this.radius = 0 ,
    this.is_password = false
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: is_obscurer,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(radius)),
        hint: hint
        // Text(
        //   'Enter your password',
        //   style: TextStyle(
        //     color: Colors.grey,
        //     fontWeight: FontWeight.w400,
        //     fontSize: 16,
        //     fontFamily: 'ReadexPro',
        //   ),
        // ),
      ),
    );
  }
}
