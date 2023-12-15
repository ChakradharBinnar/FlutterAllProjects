import 'package:flutter/material.dart';

class myCartPage extends StatefulWidget {
  const myCartPage({super.key});

  @override
  State<myCartPage> createState() => myCartPageState();
}

class myCartPageState extends State<myCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 116, 25, 25),
        toolbarHeight: 80,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: const Center(child: Text("This is Mycart page")),
    );
  }
}