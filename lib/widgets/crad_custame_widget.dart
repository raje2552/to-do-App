import 'package:flutter/material.dart';


class card_display extends StatelessWidget {
  late int count ;
  late Icon image ;
  late String  text;
  Color background ;
  card_display({super.key ,
    required this.count ,
    required this.image ,
    required this.text,
    this.background = Colors.white
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: this.background,
      ),
      width: 170 ,

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
              child: image,),
          Text('$count' , style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 0.87),
            fontFamily: 'ReadexPro',
            fontSize: 25,
            fontWeight: FontWeight.w600,

          ),),
          Text(text , style: TextStyle(
            fontSize: 12,
            color: Color.fromRGBO(255, 255, 255, 0.87),
            fontFamily: 'ReadexPro',
          ),)
        ],
      ),
    );
  }
}
