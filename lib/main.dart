import 'package:flutter/material.dart';
import 'package:restaurant_app/common/constants/routs_constants.dart';
import 'package:restaurant_app/widgets/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
       initialRoute: RouteList.initial,
        routes: Routes.routes,
     // home: Introscreen(),
      // initialRoute: "/introscreeen" ,
      // routes: {
      //   "/introscreeen":(context)=>Introscreen(),
      //   "/menuscreen":(context)=>MenuScreen(),
      // },
    );
  }
}

