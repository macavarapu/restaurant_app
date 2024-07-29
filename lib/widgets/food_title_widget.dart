

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/models/food_model.dart';

class FoodTitle extends StatelessWidget {
  final     Food  food;
   FoodTitle({super.key,  required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
       width: 300,
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      //width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 25),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(food.imagepath,height: 140,),
          Text(
            food.name,
            style: GoogleFonts.dmSerifDisplay(fontSize: 20),
          ),
          SizedBox(
            width: 160,
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$'+food.price),
                Row(
              
                  children: [
                    Icon(Icons.star,color: Colors.amber[800],),
                Text(food.rating,style: TextStyle(color: Colors.grey),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}