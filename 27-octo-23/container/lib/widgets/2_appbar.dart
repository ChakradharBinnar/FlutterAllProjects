import 'package:flutter/material.dart';

class AppBarWidgets1 extends StatelessWidget {
  const AppBarWidgets1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow:const [ BoxShadow(
                        color: Colors.grey,
                        blurRadius: 7,
                        offset: Offset(2, 2),
                        spreadRadius: 1
                      )]
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(7),
                      child: Icon(Icons.menu, size: 30,),
                    ),
                  ),
                ),


                InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const[ BoxShadow(
                        color: Colors.grey,
                        blurRadius: 7,
                        offset: Offset(2, 2),
                        spreadRadius: 1
                      )]
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(7),
                      child: Icon(Icons.notifications, size: 30,),
                    ),
                  ),
                ),
                 
              ],
            ),
          ],
        ),
       
      ),
      
      ),
      
    );
  }
}