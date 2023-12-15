import 'package:flutter/material.dart';
import 'package:food_order_application/DartFiles/create_account.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
routes: {
  "/":(context) => CreateAcc(),
},
  ));
}
