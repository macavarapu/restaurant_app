import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
   Mybutton({super.key, required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          
          color: Color.fromARGB(109, 140, 94, 91),
          borderRadius: BorderRadius.circular(40),
          
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,style: TextStyle(color: Colors.white),),
            Icon(Icons.arrow_forward,color: Colors.white,),
          ],
        ),
      ),
    );
  }
}