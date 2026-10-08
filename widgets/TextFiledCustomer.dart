import 'package:flutter/material.dart';


class Textfiledcustomer extends StatefulWidget {
   Widget? hint ;
   Widget? Icon;
   bool is_obscurer = false;
   bool is_password = false;

   Textfiledcustomer
  ({super.key,
  required hint ,
  required is_obscurer, required this.is_password , this.Icon
  });

@override
State<Textfiledcustomer> createState() => _TextfiledcustomerState();}

class _TextfiledcustomerState extends State<Textfiledcustomer> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.is_obscurer,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),

        ),
        hint: Text(
          'Enter your password',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            fontFamily: 'ReadexPro',
          ),
        ),

        suffixIcon: IconButton(
          onPressed: () {

          },
          icon:
          Icon(Icons.visibility),
        ),
      ),
    );
  }
}
