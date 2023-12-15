import 'package:flutter/material.dart';

class PastOrderPage extends StatefulWidget {
  const PastOrderPage({super.key});

  @override
  State<PastOrderPage> createState() => PastOrderPageState();
}

class PastOrderPageState extends State<PastOrderPage> {
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
      body: const Center(child: Text("This is Past Order page")),
    );
  }
}