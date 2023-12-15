import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWidgets extends StatefulWidget {
  const ContainerWidgets({super.key});

  @override
  State<ContainerWidgets> createState() => _ContainerWidgetsState();
}

class _ContainerWidgetsState extends State<ContainerWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 80),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 103, 187, 255),
                        spreadRadius: 0.8,
                        blurRadius: 10,
                        offset: Offset(1, 5))
                  ]),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.red,
                    ),
                    Container(height: 50,
                    width: 170,
                      child: TextField(
                        decoration: const InputDecoration(
                          hintText: "Search here",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.filter_list,
                      color: Colors.red,
                    )
                  ]),
            )));
  }
}
