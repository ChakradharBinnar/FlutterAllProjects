import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_order_application/DartFiles/favorite.dart';
import 'package:food_order_application/DartFiles/myCart.dart';
import 'package:food_order_application/DartFiles/myWallet.dart';
import 'package:food_order_application/DartFiles/notificationPage.dart';
import 'package:food_order_application/DartFiles/pastOrder.dart';
import 'package:food_order_application/DartFiles/profile.dart';
import 'package:food_order_application/DartFiles/setting.dart';
import 'package:food_order_application/DartFiles/shoppingCartpage.dart';
import 'package:food_order_application/DartFiles/trackOrder.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int num = 0;

  void numAdd() {
    setState(() {
      num++;
    });
  }

  void numRemove() {
    setState(() {
      num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 116, 25, 25),
        toolbarHeight: 80,
        title: const Center(
            child: Text(
          "Foodie 😋🍽️",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotifaicationPage(),
                    ));
              },
              icon: const Icon(Icons.notifications))
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),

      //Drawer start>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      drawer: Drawer(
        width: 250,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 116, 25, 25),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(20))),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ChangeProfile(),
                              ));
                        },
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            "images/login.png",
                          ),
                          radius: 55,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Welcome, Chikku!",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(top: 3, bottom: 12),
                          child: Text("chikku@gmail.com",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 196, 192, 192),
                              ))),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const homePage(),
                            ));
                      },
                      child: const ListTile(
                        leading: Icon(
                          Icons.home,
                          color: Color.fromARGB(255, 116, 25, 25),
                          size: 25,
                        ),
                        title: Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 116, 25, 25),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const myCartPage(),
                            ));
                      },
                      child: const ListTile(
                        leading: Icon(
                          Icons.fastfood,
                          color: Color.fromARGB(255, 116, 25, 25),
                          size: 25,
                        ),
                        title: Text(
                          "MyCart",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 116, 25, 25),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TrackOrderPage(),
                              ));
                        },
                        child: const ListTile(
                          leading: Icon(
                            Icons.delivery_dining,
                            color: Color.fromARGB(255, 116, 25, 25),
                            size: 25,
                          ),
                          title: Text(
                            "Track Order",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 116, 25, 25),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FavoritePage(),
                              ));
                        },
                        child: const ListTile(
                          leading: Icon(Icons.favorite,
                              size: 25,
                              color: Color.fromARGB(255, 116, 25, 25)),
                          title: Text(
                            "Favorite",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 116, 25, 25),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PastOrderPage(),
                              ));
                        },
                        child: const ListTile(
                          leading: Icon(
                            Icons.paste,
                            color: Color.fromARGB(255, 116, 25, 25),
                            size: 25,
                          ),
                          title: Text(
                            "Past Order",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 116, 25, 25),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyWalletPage(),
                              ));
                        },
                        child: const ListTile(
                          leading: Icon(Icons.account_balance_wallet_rounded,
                              size: 25,
                              color: Color.fromARGB(255, 116, 25, 25)),
                          title: Text(
                            "My Wallet",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 116, 25, 25),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SettingPage(),
                              ));
                        },
                        child: const ListTile(
                          leading: Icon(
                            Icons.settings,
                            color: Color.fromARGB(255, 116, 25, 25),
                            size: 25,
                          ),
                          title: Text(
                            "Setting",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 116, 25, 25),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: InkWell(
                        child: ListTile(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: ((context) => AlertDialog(
                                      title: const Text("Foodie 😋🍽️"),
                                      content: const Text(
                                          "Our system is designed to confirm, prepare, and deliver your order in the best time possible. Get real-time updates on your order status and an ETA. Also, track your Delivery Partner's location on a map from the restaurant to your doorstep. Order from top restaurants that are far away from your location."),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'OK'),
                                          child: const Text('CB20'),
                                        ),
                                      ],
                                    )));
                          },
                          leading: const Icon(
                            Icons.info,
                            color: Color.fromARGB(255, 116, 25, 25),
                            size: 25,
                          ),
                          title: const Text(
                            "About",
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 116, 25, 25),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),

      //Drawer End>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 22),
          child: Column(children: [
            //Searchbox Start>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

            Container(
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
            //Searchbox End>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            const SizedBox(
              height: 35,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "What's your Mood? 👩🏻‍🍳",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            //Whats your mood Start>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15, top: 10, left: 5),
                child: Row(children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              content: Container(
                                width: double.infinity,
                                height: double.infinity,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 3),
                                        child: Container(
                                          width: 300,
                                          height: 100,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12)),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 211, 207, 207),
                                                  blurRadius: 8,
                                                  offset: Offset(0, 5),
                                                  spreadRadius: 1,
                                                )
                                              ]),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 3),
                                                child: Container(
                                                    width: 80,
                                                    height: 80,
                                                    child: const Image(
                                                        image: AssetImage(
                                                            "images/drinks/drink1.jpg"))),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Container(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      const Text(
                                                        "Coca Cola",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                      ),
                                                      const Text(
                                                          "Classic Coke"),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Text(
                                                            "₹25",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.red,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 18),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          InkWell(
                                                            onTap: () {
                                                              Fluttertoast
                                                                  .showToast(
                                                                      msg:
                                                                          "Item Added in Cart Sucessfully");
                                                            },
                                                            child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              width: 60,
                                                              height: 25,
                                                              decoration: BoxDecoration(
                                                                  color: const Color
                                                                      .fromARGB(
                                                                      255,
                                                                      116,
                                                                      25,
                                                                      25),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20)),
                                                              child: const Text(
                                                                "Add",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 3),
                                        child: Container(
                                          width: 300,
                                          height: 100,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12)),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 211, 207, 207),
                                                  blurRadius: 8,
                                                  offset: Offset(0, 5),
                                                  spreadRadius: 1,
                                                )
                                              ]),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 3),
                                                child: Container(
                                                    width: 80,
                                                    height: 80,
                                                    child: const Image(
                                                        image: AssetImage(
                                                            "images/drinks/fanta.jpg"))),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Container(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      const Text(
                                                        "Fanta",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                      ),
                                                      const Text(
                                                          "Chilled Fanta"),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Text(
                                                            "₹30",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.red,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 18),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          InkWell(
                                                            onTap: () {
                                                              Fluttertoast
                                                                  .showToast(
                                                                      msg:
                                                                          "Item Added in Cart Sucessfully");
                                                            },
                                                            child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              width: 60,
                                                              height: 25,
                                                              decoration: BoxDecoration(
                                                                  color: const Color
                                                                      .fromARGB(
                                                                      255,
                                                                      116,
                                                                      25,
                                                                      25),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20)),
                                                              child: const Text(
                                                                "Add",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 3),
                                        child: Container(
                                          width: 300,
                                          height: 100,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12)),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 211, 207, 207),
                                                  blurRadius: 8,
                                                  offset: Offset(0, 5),
                                                  spreadRadius: 1,
                                                )
                                              ]),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 3),
                                                child: Container(
                                                    width: 80,
                                                    height: 80,
                                                    child: const Image(
                                                        image: AssetImage(
                                                      "images/drinks/Thums_Up_Can_2.jpeg",
                                                    ))),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Container(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      const Text(
                                                        "Thumps up",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                      ),
                                                      const Text("Cold Drink"),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Text(
                                                            "₹25",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.red,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 18),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          InkWell(
                                                            onTap: () {
                                                              Fluttertoast
                                                                  .showToast(
                                                                      msg:
                                                                          "Item Added in Cart Sucessfully");
                                                            },
                                                            child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              width: 60,
                                                              height: 25,
                                                              decoration: BoxDecoration(
                                                                  color: const Color
                                                                      .fromARGB(
                                                                      255,
                                                                      116,
                                                                      25,
                                                                      25),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20)),
                                                              child: const Text(
                                                                "Add",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 3),
                                        child: Container(
                                          width: 300,
                                          height: 100,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12)),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 211, 207, 207),
                                                  blurRadius: 8,
                                                  offset: Offset(0, 5),
                                                  spreadRadius: 1,
                                                )
                                              ]),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 3),
                                                child: Container(
                                                    width: 80,
                                                    height: 80,
                                                    child: const Image(
                                                        image: AssetImage(
                                                            "images/drinks/mirinda.jfif"))),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Container(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      const Text(
                                                        "Mirinda",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                      ),
                                                      const Text(
                                                          "Classic Mirinda"),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Text(
                                                            "₹25",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.red,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 18),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          InkWell(
                                                            onTap: () {
                                                              Fluttertoast
                                                                  .showToast(
                                                                      msg:
                                                                          "Item Added in Cart Sucessfully");
                                                            },
                                                            child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              width: 60,
                                                              height: 25,
                                                              decoration: BoxDecoration(
                                                                  color: const Color
                                                                      .fromARGB(
                                                                      255,
                                                                      116,
                                                                      25,
                                                                      25),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20)),
                                                              child: const Text(
                                                                "Add",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 3),
                                        child: Container(
                                          width: 300,
                                          height: 100,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12)),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 211, 207, 207),
                                                  blurRadius: 8,
                                                  offset: Offset(0, 5),
                                                  spreadRadius: 1,
                                                )
                                              ]),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 3),
                                                child: Container(
                                                    width: 80,
                                                    height: 80,
                                                    child: const Image(
                                                        image: AssetImage(
                                                            "images/drinks/spriteCan.jfif"))),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Container(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      const Text(
                                                        "Sprite",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                      ),
                                                      const Text(
                                                          "Chilled Sprite"),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Text(
                                                            "₹25",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.red,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 18),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          InkWell(
                                                            onTap: () {
                                                              Fluttertoast
                                                                  .showToast(
                                                                      msg:
                                                                          "Item Added in Cart Sucessfully");
                                                            },
                                                            child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              width: 60,
                                                              height: 25,
                                                              decoration: BoxDecoration(
                                                                  color: const Color
                                                                      .fromARGB(
                                                                      255,
                                                                      116,
                                                                      25,
                                                                      25),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20)),
                                                              child: const Text(
                                                                "Add",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 3),
                                        child: Container(
                                          width: 300,
                                          height: 100,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12)),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 211, 207, 207),
                                                  blurRadius: 8,
                                                  offset: Offset(0, 5),
                                                  spreadRadius: 1,
                                                )
                                              ]),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 3),
                                                child: Container(
                                                    width: 80,
                                                    height: 80,
                                                    child: const Image(
                                                        image: AssetImage(
                                                            "images/drinks/drink1.jpg"))),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Container(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      const Text(
                                                        "Coca Cola",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                      ),
                                                      const Text(
                                                          "Classic Coke"),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Text(
                                                            "₹25",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.red,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 18),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          InkWell(
                                                            onTap: () {
                                                              Fluttertoast
                                                                  .showToast(
                                                                      msg:
                                                                          "Item Added in Cart Sucessfully");
                                                            },
                                                            child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              width: 60,
                                                              height: 25,
                                                              decoration: BoxDecoration(
                                                                  color: const Color
                                                                      .fromARGB(
                                                                      255,
                                                                      116,
                                                                      25,
                                                                      25),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20)),
                                                              child: const Text(
                                                                "Add",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 3),
                                        child: Container(
                                          width: 300,
                                          height: 100,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12)),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 211, 207, 207),
                                                  blurRadius: 8,
                                                  offset: Offset(0, 5),
                                                  spreadRadius: 1,
                                                )
                                              ]),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 3),
                                                child: Container(
                                                    width: 80,
                                                    height: 80,
                                                    child: const Image(
                                                        image: AssetImage(
                                                            "images/drinks/drink1.jpg"))),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Container(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      const Text(
                                                        "Coca Cola",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                      ),
                                                      const Text(
                                                          "Classic Coke"),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Text(
                                                            "₹25",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.red,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 18),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          InkWell(
                                                            onTap: () {
                                                              Fluttertoast
                                                                  .showToast(
                                                                      msg:
                                                                          "Item Added in Cart Sucessfully");
                                                            },
                                                            child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              width: 60,
                                                              height: 25,
                                                              decoration: BoxDecoration(
                                                                  color: const Color
                                                                      .fromARGB(
                                                                      255,
                                                                      116,
                                                                      25,
                                                                      25),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20)),
                                                              child: const Text(
                                                                "Add",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 3),
                                        child: Container(
                                          width: 300,
                                          height: 100,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12)),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 211, 207, 207),
                                                  blurRadius: 8,
                                                  offset: Offset(0, 5),
                                                  spreadRadius: 1,
                                                )
                                              ]),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 3),
                                                child: Container(
                                                    width: 80,
                                                    height: 80,
                                                    child: const Image(
                                                        image: AssetImage(
                                                            "images/drinks/drink1.jpg"))),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Container(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      const Text(
                                                        "Coca Cola",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                      ),
                                                      const Text(
                                                          "Classic Coke"),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        children: [
                                                          const Text(
                                                            "₹25",
                                                            style: TextStyle(
                                                                color:
                                                                    Colors.red,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 18),
                                                          ),
                                                          const SizedBox(
                                                              width: 10),
                                                          InkWell(
                                                            onTap: () {
                                                              Fluttertoast
                                                                  .showToast(
                                                                      msg:
                                                                          "Item Added in Cart Sucessfully");
                                                            },
                                                            child: Container(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              width: 60,
                                                              height: 25,
                                                              decoration: BoxDecoration(
                                                                  color: const Color
                                                                      .fromARGB(
                                                                      255,
                                                                      116,
                                                                      25,
                                                                      25),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20)),
                                                              child: const Text(
                                                                "Add",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 8,
                                offset: Offset(0, 5),
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage(
                                "images/download.jfif",
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          "Cold Drinks",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                content: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6, vertical: 3),
                                          child: Container(
                                            width: 300,
                                            height: 100,
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 211, 207, 207),
                                                    blurRadius: 8,
                                                    offset: Offset(0, 5),
                                                    spreadRadius: 1,
                                                  )
                                                ]),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 3),
                                                  child: Container(
                                                      width: 80,
                                                      height: 80,
                                                      child: const Image(
                                                          image: AssetImage(
                                                              "images/drinks/drink1.jpg"))),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10),
                                                  child: Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        const Text(
                                                          "Coca Cola",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18),
                                                        ),
                                                        const Text(
                                                            "Classic Coke"),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            const Text(
                                                              "₹25",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .red,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18),
                                                            ),
                                                            const SizedBox(
                                                                width: 10),
                                                            InkWell(
                                                              onTap: () {
                                                                Fluttertoast
                                                                    .showToast(
                                                                        msg:
                                                                            "Item Added in Cart Sucessfully");
                                                              },
                                                              child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                width: 60,
                                                                height: 25,
                                                                decoration: BoxDecoration(
                                                                    color: const Color
                                                                        .fromARGB(
                                                                        255,
                                                                        116,
                                                                        25,
                                                                        25),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                                child:
                                                                    const Text(
                                                                  "Add",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6, vertical: 3),
                                          child: Container(
                                            width: 300,
                                            height: 100,
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 211, 207, 207),
                                                    blurRadius: 8,
                                                    offset: Offset(0, 5),
                                                    spreadRadius: 1,
                                                  )
                                                ]),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 3),
                                                  child: Container(
                                                      width: 80,
                                                      height: 80,
                                                      child: const Image(
                                                          image: AssetImage(
                                                              "images/drinks/fanta.jpg"))),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10),
                                                  child: Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        const Text(
                                                          "Fanta",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18),
                                                        ),
                                                        const Text(
                                                            "Chilled Fanta"),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            const Text(
                                                              "₹30",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .red,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18),
                                                            ),
                                                            const SizedBox(
                                                                width: 10),
                                                            InkWell(
                                                              onTap: () {
                                                                Fluttertoast
                                                                    .showToast(
                                                                        msg:
                                                                            "Item Added in Cart Sucessfully");
                                                              },
                                                              child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                width: 60,
                                                                height: 25,
                                                                decoration: BoxDecoration(
                                                                    color: const Color
                                                                        .fromARGB(
                                                                        255,
                                                                        116,
                                                                        25,
                                                                        25),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                                child:
                                                                    const Text(
                                                                  "Add",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6, vertical: 3),
                                          child: Container(
                                            width: 300,
                                            height: 100,
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 211, 207, 207),
                                                    blurRadius: 8,
                                                    offset: Offset(0, 5),
                                                    spreadRadius: 1,
                                                  )
                                                ]),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 3),
                                                  child: Container(
                                                      width: 80,
                                                      height: 80,
                                                      child: const Image(
                                                          image: AssetImage(
                                                        "images/drinks/Thums_Up_Can_2.jpeg",
                                                      ))),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10),
                                                  child: Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        const Text(
                                                          "Thumps up",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18),
                                                        ),
                                                        const Text(
                                                            "Cold Drink"),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            const Text(
                                                              "₹25",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .red,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18),
                                                            ),
                                                            const SizedBox(
                                                                width: 10),
                                                            InkWell(
                                                              onTap: () {
                                                                Fluttertoast
                                                                    .showToast(
                                                                        msg:
                                                                            "Item Added in Cart Sucessfully");
                                                              },
                                                              child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                width: 60,
                                                                height: 25,
                                                                decoration: BoxDecoration(
                                                                    color: const Color
                                                                        .fromARGB(
                                                                        255,
                                                                        116,
                                                                        25,
                                                                        25),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                                child:
                                                                    const Text(
                                                                  "Add",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6, vertical: 3),
                                          child: Container(
                                            width: 300,
                                            height: 100,
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 211, 207, 207),
                                                    blurRadius: 8,
                                                    offset: Offset(0, 5),
                                                    spreadRadius: 1,
                                                  )
                                                ]),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 3),
                                                  child: Container(
                                                      width: 80,
                                                      height: 80,
                                                      child: const Image(
                                                          image: AssetImage(
                                                              "images/drinks/mirinda.jfif"))),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10),
                                                  child: Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        const Text(
                                                          "Mirinda",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18),
                                                        ),
                                                        const Text(
                                                            "Classic Mirinda"),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            const Text(
                                                              "₹25",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .red,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18),
                                                            ),
                                                            const SizedBox(
                                                                width: 10),
                                                            InkWell(
                                                              onTap: () {
                                                                Fluttertoast
                                                                    .showToast(
                                                                        msg:
                                                                            "Item Added in Cart Sucessfully");
                                                              },
                                                              child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                width: 60,
                                                                height: 25,
                                                                decoration: BoxDecoration(
                                                                    color: const Color
                                                                        .fromARGB(
                                                                        255,
                                                                        116,
                                                                        25,
                                                                        25),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                                child:
                                                                    const Text(
                                                                  "Add",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6, vertical: 3),
                                          child: Container(
                                            width: 300,
                                            height: 100,
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 211, 207, 207),
                                                    blurRadius: 8,
                                                    offset: Offset(0, 5),
                                                    spreadRadius: 1,
                                                  )
                                                ]),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 3),
                                                  child: Container(
                                                      width: 80,
                                                      height: 80,
                                                      child: const Image(
                                                          image: AssetImage(
                                                              "images/drinks/spriteCan.jfif"))),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10),
                                                  child: Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        const Text(
                                                          "Sprite",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18),
                                                        ),
                                                        const Text(
                                                            "Chilled Sprite"),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            const Text(
                                                              "₹25",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .red,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18),
                                                            ),
                                                            const SizedBox(
                                                                width: 10),
                                                            InkWell(
                                                              onTap: () {
                                                                Fluttertoast
                                                                    .showToast(
                                                                        msg:
                                                                            "Item Added in Cart Sucessfully");
                                                              },
                                                              child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                width: 60,
                                                                height: 25,
                                                                decoration: BoxDecoration(
                                                                    color: const Color
                                                                        .fromARGB(
                                                                        255,
                                                                        116,
                                                                        25,
                                                                        25),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                                child:
                                                                    const Text(
                                                                  "Add",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6, vertical: 3),
                                          child: Container(
                                            width: 300,
                                            height: 100,
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 211, 207, 207),
                                                    blurRadius: 8,
                                                    offset: Offset(0, 5),
                                                    spreadRadius: 1,
                                                  )
                                                ]),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 3),
                                                  child: Container(
                                                      width: 80,
                                                      height: 80,
                                                      child: const Image(
                                                          image: AssetImage(
                                                              "images/drinks/drink1.jpg"))),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10),
                                                  child: Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        const Text(
                                                          "Coca Cola",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18),
                                                        ),
                                                        const Text(
                                                            "Classic Coke"),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            const Text(
                                                              "₹25",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .red,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18),
                                                            ),
                                                            const SizedBox(
                                                                width: 10),
                                                            InkWell(
                                                              onTap: () {
                                                                Fluttertoast
                                                                    .showToast(
                                                                        msg:
                                                                            "Item Added in Cart Sucessfully");
                                                              },
                                                              child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                width: 60,
                                                                height: 25,
                                                                decoration: BoxDecoration(
                                                                    color: const Color
                                                                        .fromARGB(
                                                                        255,
                                                                        116,
                                                                        25,
                                                                        25),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                                child:
                                                                    const Text(
                                                                  "Add",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6, vertical: 3),
                                          child: Container(
                                            width: 300,
                                            height: 100,
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 211, 207, 207),
                                                    blurRadius: 8,
                                                    offset: Offset(0, 5),
                                                    spreadRadius: 1,
                                                  )
                                                ]),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 3),
                                                  child: Container(
                                                      width: 80,
                                                      height: 80,
                                                      child: const Image(
                                                          image: AssetImage(
                                                              "images/drinks/drink1.jpg"))),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10),
                                                  child: Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        const Text(
                                                          "Coca Cola",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18),
                                                        ),
                                                        const Text(
                                                            "Classic Coke"),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            const Text(
                                                              "₹25",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .red,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18),
                                                            ),
                                                            const SizedBox(
                                                                width: 10),
                                                            InkWell(
                                                              onTap: () {
                                                                Fluttertoast
                                                                    .showToast(
                                                                        msg:
                                                                            "Item Added in Cart Sucessfully");
                                                              },
                                                              child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                width: 60,
                                                                height: 25,
                                                                decoration: BoxDecoration(
                                                                    color: const Color
                                                                        .fromARGB(
                                                                        255,
                                                                        116,
                                                                        25,
                                                                        25),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                                child:
                                                                    const Text(
                                                                  "Add",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6, vertical: 3),
                                          child: Container(
                                            width: 300,
                                            height: 100,
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(12)),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 211, 207, 207),
                                                    blurRadius: 8,
                                                    offset: Offset(0, 5),
                                                    spreadRadius: 1,
                                                  )
                                                ]),
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 3),
                                                  child: Container(
                                                      width: 80,
                                                      height: 80,
                                                      child: const Image(
                                                          image: AssetImage(
                                                              "images/drinks/drink1.jpg"))),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10),
                                                  child: Container(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        const Text(
                                                          "Coca Cola",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18),
                                                        ),
                                                        const Text(
                                                            "Classic Coke"),
                                                        const SizedBox(
                                                          height: 5,
                                                        ),
                                                        Row(
                                                          children: [
                                                            const Text(
                                                              "₹25",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .red,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 18),
                                                            ),
                                                            const SizedBox(
                                                                width: 10),
                                                            InkWell(
                                                              onTap: () {
                                                                Fluttertoast
                                                                    .showToast(
                                                                        msg:
                                                                            "Item Added in Cart Sucessfully");
                                                              },
                                                              child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                width: 60,
                                                                height: 25,
                                                                decoration: BoxDecoration(
                                                                    color: const Color
                                                                        .fromARGB(
                                                                        255,
                                                                        116,
                                                                        25,
                                                                        25),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                                child:
                                                                    const Text(
                                                                  "Add",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 8,
                                  offset: Offset(0, 5),
                                  spreadRadius: 1,
                                )
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child:
                                  Image(image: AssetImage("images/pizzza.jpg")),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Pizza",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 8,
                                offset: Offset(0, 5),
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Image(
                                image: AssetImage("images/download (1).jpg")),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Burger",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 8,
                                offset: Offset(0, 5),
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Image(
                                image: AssetImage("images/download (2).jpg")),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Noodles",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 8,
                                offset: Offset(0, 5),
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Image(
                                image: AssetImage("images/frenchfries.jfif")),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "French Fries",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 8,
                                offset: Offset(0, 5),
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8),
                            child: Image(
                                image: AssetImage("images/download (5).jpg")),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Veg Sandwich",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 8,
                                offset: Offset(0, 5),
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5),
                            child:
                                Image(image: AssetImage("images/pastsa.jpg")),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Pasta",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 8,
                                offset: Offset(0, 5),
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(7),
                            child: Image(image: AssetImage("images/rolls.jpg")),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Rolls",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 8,
                                offset: Offset(0, 5),
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5),
                            child: Image(
                                image: AssetImage("images/pav_bhaji.jfif")),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Pav Bhaji",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 8,
                                offset: Offset(0, 5),
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(5),
                            child:
                                Image(image: AssetImage("images/khichadi.png")),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Khichadi",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 8,
                                offset: Offset(0, 5),
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Image(
                                image: AssetImage("images/ice_Cream.jpg")),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Ice Cream",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),

            //Whats your mood Start End>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

            const SizedBox(
              height: 7,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Popular",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),

            //Popular Start>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 275,
                      width: 175,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 8,
                              offset: Offset(0, 5),
                              spreadRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            const Image(
                              image: AssetImage("images/download (5).jpg"),
                              height: 125,
                            ),
                            const Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    "Veg Sandwich",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            const Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    "Chaat masala, sandwich bread.",
                                  ),
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "₹65",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    FavoriteButton(
                                        iconSize: 35,
                                        isFavorite: false,
                                        valueChanged: () {}),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 275,
                      width: 175,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 8,
                              offset: Offset(0, 5),
                              spreadRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage("images/pizza11.jpg"),
                              height: 125,
                              width: 120,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    "Pizza",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    "The best burgers are simple and messy.",
                                  ),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "₹79",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                   FavoriteButton(
                                        iconSize: 35,
                                        isFavorite: false,
                                        valueChanged: () {}),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 275,
                      width: 175,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 8,
                              offset: Offset(0, 5),
                              spreadRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage("images/download (2).jpg"),
                              height: 125,
                              width: 130,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    "Noodles",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    "The best burgers are simple and messy.",
                                  ),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "₹79",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    FavoriteButton(
                                        iconSize: 35,
                                        isFavorite: false,
                                        valueChanged: () {}),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 275,
                      width: 175,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 8,
                              offset: Offset(0, 5),
                              spreadRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage("images/pavbhaji11.jfif"),
                              height: 125,
                              width: 165,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    "Pav Bhaji",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    "The best burgers are simple and messy.",
                                  ),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "₹79",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    FavoriteButton(
                                        iconSize: 35,
                                        isFavorite: false,
                                        valueChanged: () {}),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 275,
                      width: 175,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 8,
                              offset: Offset(0, 5),
                              spreadRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage("images/Burger11.jfif"),
                              height: 125,
                              width: 125,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    "Burger",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    "The best burgers are simple and messy.",
                                  ),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "₹79",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    FavoriteButton(
                                        iconSize: 35,
                                        isFavorite: false,
                                        valueChanged: () {}),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 275,
                      width: 175,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 8,
                              offset: Offset(0, 5),
                              spreadRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage("images/frenchfries1.jpg"),
                              height: 125,
                              width: 150,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    "French Fries",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    "The best burgers are simple and messy.",
                                  ),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "₹79",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    FavoriteButton(
                                        iconSize: 35,
                                        isFavorite: false,
                                        valueChanged: () {}),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 275,
                      width: 175,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 8,
                              offset: Offset(0, 5),
                              spreadRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage("images/icecream1.jpg"),
                              height: 125,
                              width: 110,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    "Ice Cream",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    "Chaat masala, sandwich bread.",
                                  ),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "₹65",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),

                                    FavoriteButton(valueChanged: (){

                            }, iconSize: 35, isFavorite: false,),
                                  
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 275,
                      width: 175,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 8,
                              offset: Offset(0, 5),
                              spreadRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage("images/coldrink.jpg"),
                              height: 125,
                              width: 170,
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    "Cold Drink Combo",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 15, top: 10),
                                  child: Text(
                                    "Chaat masala, sandwich bread.",
                                  ),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "₹65",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    FavoriteButton(
                                        iconSize: 35,
                                        isFavorite: false,
                                        valueChanged: () {}),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
            ),
            //Popular end>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 0),
                child: Text(
                  "Newest",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),

            //Newest Start>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                  height: 165,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(0, 5),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Container(
                        width: 140,
                        height: 115,
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child:
                              Image(image: AssetImage("images/icecream1.jpg")),
                        )
                      ),
                      Container(
                        width: 140,
                        height: 115,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ice Cream",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Cucumber, red onion, chaat masala, sandwich bread.",
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "₹55",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10,),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FavoriteButton(valueChanged: (){
                            }, iconSize: 35, isFavorite: false,),
                            SizedBox(width: 10,),
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                  height: 165,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(0, 5),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Container(
                        width: 140,
                        height: 115,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image(
                              image: AssetImage("images/frenchfries1.jpg")),
                        ),
                      ),
                      Container(
                        width: 140,
                        height: 115,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "French Fries",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Cucumber, red onion, chaat masala, sandwich bread.",
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "₹65",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FavoriteButton(valueChanged: (){

                            }, iconSize: 35, isFavorite: false,),
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                  height: 165,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(0, 5),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Container(
                        width: 140,
                        height: 115,
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Image(
                              image: AssetImage("images/download (2).jpg")),
                        ),
                      ),
                      Container(
                        width: 140,
                        height: 115,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Noodles",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Cucumber, red onion, chaat masala, sandwich bread.",
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "₹65",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           FavoriteButton(valueChanged: (){

                            }, iconSize: 35, isFavorite: false,),
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                  height: 165,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(0, 5),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Container(
                        width: 140,
                        height: 115,
                        child: const Image(
                            image: AssetImage("images/pizza11.jpg")),
                      ),
                      Container(
                        width: 140,
                        height: 115,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Pizza",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Cucumber, red onion, chaat masala, sandwich bread.",
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "₹65",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           FavoriteButton(valueChanged: (){
                            }, iconSize: 35, isFavorite: false,),
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                  height: 165,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(0, 5),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Container(
                        width: 140,
                        height: 130,
                        child: const Image(
                            image: AssetImage("images/download (1).jpg")),
                      ),
                      Container(
                        width: 140,
                        height: 115,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Burger",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Cucumber, red onion, chaat masala, sandwich bread.",
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "₹65",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FavoriteButton(valueChanged: (){
                            }, iconSize: 35, isFavorite: false,),
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                  height: 165,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(0, 5),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Container(
                        width: 140,
                        height: 115,
                        child: const Image(
                            image: AssetImage("images/icecream1.jpg")),
                      ),
                      Container(
                        width: 140,
                        height: 115,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ice Cream",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Cucumber, red onion, chaat masala, sandwich bread.",
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "₹65",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FavoriteButton(valueChanged: (){
                            }, iconSize: 35, isFavorite: false,),
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                  height: 165,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(0, 5),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Container(
                        width: 140,
                        height: 115,
                        child: const Image(
                            image: AssetImage("images/icecream1.jpg")),
                      ),
                      Container(
                        width: 140,
                        height: 115,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ice Cream",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Cucumber, red onion, chaat masala, sandwich bread.",
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "₹65",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                       Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FavoriteButton(valueChanged: (){

                            }, iconSize: 35, isFavorite: false,),
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Container(
                  height: 165,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8,
                          offset: Offset(0, 5),
                          spreadRadius: 1,
                        )
                      ],
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Container(
                        width: 140,
                        height: 115,
                        child: const Image(
                            image: AssetImage("images/icecream1.jpg")),
                      ),
                      Container(
                        width: 140,
                        height: 115,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ice Cream",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Cucumber, red onion, chaat masala, sandwich bread.",
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "₹65",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FavoriteButton(valueChanged: (){

                            }, iconSize: 35, isFavorite: false,),
                            Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ]),
        ),
      ),

      //FoloatingAction Button Start>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 45),
        child: Container(
          width: 60,
          height: 60,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ShoppingCartPage(),
                  ));
            },
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.shopping_cart_outlined,
              size: 33,
              color: Colors.red,
            ),
          ),
        ),
      ),

      //FoloatingAction Button Start>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    );
  }
}
