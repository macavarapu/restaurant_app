import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/common/constants/app_colors.dart';
import 'package:restaurant_app/common/constants/images_constants.dart';
import 'package:restaurant_app/common/constants/string_constants.dart';
import 'package:restaurant_app/commponents/button.dart';
import 'package:restaurant_app/widgets/food_title_widget.dart';
import 'package:restaurant_app/models/food_model.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List FoodMenu = [
    Food(
        name: "salmon sushi",
        price: "21.00",
        imagepath: ImagesConstants.salmonsushi,
        rating: "4.9", ),
    Food(
        name: "Tuna",
        price: "23.00",
      imagepath: ImagesConstants.Tuna,
        rating: "4.3", ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          StringConstants.toky,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(230, 244, 67, 54),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringConstants.get32promo,
                      style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Mybutton(text: StringConstants.Redeem, onTap: () {}),
                  ],
                ),
                Image.asset(
                  ImagesConstants.sushi,
                  height: 100,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              StringConstants.foodmenu,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: FoodMenu.length,
              itemBuilder: (context, index) => FoodTitle(
                food: FoodMenu[index],
              ),
            ),
          ),
          SizedBox(height: 25,),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
              
            ),
            margin: EdgeInsets.only(left: 25,right: 25,bottom: 25),
            padding: EdgeInsetsDirectional.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             Row(
              children: [
                   Image.asset(ImagesConstants.cake,height: 60,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(StringConstants.salmoneggs,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                    ),
                    SizedBox(height: 20,),
                    Text("\$21.00",style: TextStyle(color: Colors.grey[700]),),
                  ],
                ),
              ],
             ),
                Icon(Icons.favorite_outline,color: Colors.grey,size: 30,),
                
              ],
            ),
            
          ),
        ],
      ),
    );
  }
}
