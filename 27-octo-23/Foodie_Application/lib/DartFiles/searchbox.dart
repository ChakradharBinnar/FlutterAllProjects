import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBoxPage extends StatelessWidget {
  const SearchBoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:    Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 8,
                        color: Colors.grey,
                        spreadRadius: 1,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.circular(20)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(CupertinoIcons.search),
                    border: InputBorder.none,
                    hintText: "Search here",
                  ),
                ),
              ),
            ),
    );
  }
}