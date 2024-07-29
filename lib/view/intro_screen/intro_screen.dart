import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/common/constants/images_constants.dart';
import 'package:restaurant_app/common/constants/string_constants.dart';
import 'package:restaurant_app/commponents/button.dart';

class Introscreen extends StatelessWidget {
  const Introscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(175, 244, 67, 54),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 25,),
              Text("Singaraiah",
              style: GoogleFonts.aDLaMDisplay(
                fontSize: 28,
                color: Colors.white,
          
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding:  EdgeInsets.all(50.0),
                child: Image.asset(ImagesConstants.cake),
              ),
              Text(StringConstants.THETASTEOFJAPANESEFOOD,
               style: GoogleFonts.aDLaMDisplay(
                fontSize: 44,
                color: Colors.white,
          
                ),
              ),
              SizedBox(height: 10,),
              Text(StringConstants.Fellthetasteofthemostpopularjapanesefoodfromanywereandanytime,
              style: TextStyle(
                color: Colors.grey[200],height: 2),),
                SizedBox(height: 10,),
                 Mybutton(text: StringConstants.getstarted,
                onTap: (){
                  Navigator.pushNamed(context, "/menuscreen");
                },
                ),
            ],
          ),
        ),
      ),
    );
  }
}