import 'package:flutter/material.dart';

class NotifaicationPage extends StatefulWidget {
  const NotifaicationPage({super.key});

  @override
  State<NotifaicationPage> createState() => _NotifaicationPageState();
}

class _NotifaicationPageState extends State<NotifaicationPage> {
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
      body: const Center(child: Text("This is notification page")),
    );
  }
}