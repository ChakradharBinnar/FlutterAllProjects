import 'package:flutter/material.dart';
import 'package:food_order_application/DartFiles/homePage.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
routes: {
  "/":(context) => homePage(),
},
  ));
}