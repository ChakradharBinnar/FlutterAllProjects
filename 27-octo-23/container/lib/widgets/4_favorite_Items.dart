import 'package:flutter/material.dart';

class FavoriteFood extends StatefulWidget {
  
  const FavoriteFood({super.key});

  

  @override
  State<FavoriteFood> createState() => _FavoriteFoodState();
}

class _FavoriteFoodState extends State<FavoriteFood> {
  bool _isFavorate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 120),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: 180,
                  height: 282,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            spreadRadius: 1)
                      ]),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const Image(
                        image: AssetImage(
                          "images/download.jfif",
                        ),
                        height: 140,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Coca Cola",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15, top: 8),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Original Taste Soft Drink PET Bottle.",
                              style: TextStyle(fontSize: 12),
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            "₹39",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          IconButton(
                            onPressed: (){ 
                            },
                            icon: (Icon(_isFavorate? Icons.favorite : Icons.favorite_border, color: Colors.red,))
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: 180,
                  height: 272,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            spreadRadius: 1)
                      ]),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Image(
                        image: AssetImage(
                          "images/360_F_220705014_3QM4df2AekmpPtScUrj27CvIH0YUGTXA.jpg",
                        ),
                        height: 140,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Pizza",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 8),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Easy breezy cheesy Tasty pizza.",
                              style: TextStyle(fontSize: 12),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "₹199",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: 180,
                  height: 272,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            spreadRadius: 1)
                      ]),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Image(
                        image: AssetImage(
                          "images/download (1).jpg",
                        ),
                        height: 140,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Burger",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 8),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "The best burgers are simple and messy.",
                              style: TextStyle(fontSize: 12),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "₹98",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: 180,
                  height: 272,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            spreadRadius: 1)
                      ]),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Image(
                        image: AssetImage(
                          "images/download (2).jpg",
                        ),
                        height: 140,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Noodles",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 8),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Take your stomach on a joy ride with yummy noodles.",
                              style: TextStyle(fontSize: 12),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "₹120",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: 180,
                  height: 272,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            spreadRadius: 1)
                      ]),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Image(
                        image: AssetImage(
                          "images/download (4).jpg",
                        ),
                        height: 140,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "French Fries",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 8),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Always hot! Delicious french fries.",
                              style: TextStyle(fontSize: 12),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "₹152",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: 180,
                  height: 272,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 10,
                            color: Colors.grey,
                            offset: Offset(0, 3),
                            spreadRadius: 1)
                      ]),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Image(
                        image: AssetImage(
                          "images/download (5).jpg",
                        ),
                        height: 140,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 10),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Veg Sandwich",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 8),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Cucumber, red onion, chaat masala, sandwich bread.",
                              style: TextStyle(fontSize: 12),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "₹78",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
