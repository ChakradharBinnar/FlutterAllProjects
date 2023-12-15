import 'package:flutter/material.dart';

class AppbarWidgets extends StatelessWidget {
  const AppbarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.grey,
                  )
                ]),
            child: const Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.menu,
                size: 25,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.grey,
                  )
                ]
                ),
            child: const Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.notifications,
                size: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
