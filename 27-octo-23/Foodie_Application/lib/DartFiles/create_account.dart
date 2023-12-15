import 'package:flutter/material.dart';
import 'package:food_order_application/DartFiles/login.dart';

class CreateAcc extends StatefulWidget {
  const CreateAcc({super.key});

  @override
  State<CreateAcc> createState() => CreateAccState();
}

class CreateAccState extends State<CreateAcc> {
  String? gender;
  String? VegOrNonVeg;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [Color.fromARGB(255, 116, 25, 25), Colors.white]),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 40, left: 50, right: 50),
                        child: Column(
                          children: [
                            const Text(
                              "Create New Account",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 230,
                                  height: 40,
                                  child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          labelText: "Enter Your FirstName",
                                          labelStyle: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 122, 122, 122),
                                              fontSize: 17))),
                                ),
                                Container(
                                  width: 230,
                                  height: 40,
                                  child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          labelText: "Enter Your LastName",
                                          labelStyle: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 122, 122, 122),
                                              fontSize: 17))),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: double.infinity,
                              height: 40,
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      labelText: "Enter Your Address",
                                      labelStyle: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 122, 122, 122),
                                          fontSize: 17))),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 230,
                                  height: 40,
                                  child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          labelText: "Enter Your City",
                                          labelStyle: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 122, 122, 122),
                                              fontSize: 17))),
                                ),
                                Container(
                                  width: 230,
                                  height: 40,
                                  child: TextField(
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          labelText: "Enter Your PIN-Code",
                                          labelStyle: const TextStyle(
                                              color: Color.fromARGB(
                                                  255, 122, 122, 122),
                                              fontSize: 17))),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Container(
                              width: double.infinity,
                              height: 40,
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      labelText: "Enter Your Mobile Number",
                                      labelStyle: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 122, 122, 122),
                                          fontSize: 17))),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Container(
                              width: double.infinity,
                              height: 40,
                              child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      labelText: "Enter Your E-Mail",
                                      labelStyle: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 122, 122, 122),
                                          fontSize: 17))),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 280,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1, color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Column(
                                            children: [
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(top: 10),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      width: 11,
                                                    ),
                                                    Text(
                                                      "Select Your Gender",
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          color: Color.fromARGB(
                                                              255,
                                                              122,
                                                              122,
                                                              122)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Radio(
                                                    value: "Male",
                                                    groupValue: gender,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        gender =
                                                            value.toString();
                                                      });
                                                    },
                                                  ),
                                                  const Text("Male"),
                                                  Row(
                                                    children: [
                                                      Radio(
                                                        value: "Female",
                                                        groupValue: gender,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            gender = value
                                                                .toString();
                                                          });
                                                        },
                                                      ),
                                                      const Text("Female"),
                                                      Row(
                                                        children: [
                                                          Radio(
                                                            value: "others",
                                                            groupValue: gender,
                                                            onChanged: (value) {
                                                              setState(() {
                                                                gender = value
                                                                    .toString();
                                                              });
                                                            },
                                                          ),
                                                          const Text("others")
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 200,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 11,
                                              ),
                                              Text(
                                                "Veg Or NonVeg",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    color: Color.fromARGB(
                                                        255, 122, 122, 122)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Radio(
                                              value: "Veg",
                                              groupValue: VegOrNonVeg,
                                              onChanged: (value) {
                                                setState(() {
                                                  VegOrNonVeg =
                                                      value.toString();
                                                });
                                              },
                                            ),
                                            const Text("Veg"),
                                            Row(
                                              children: [
                                                Radio(
                                                  value: "NonVeg",
                                                  groupValue: VegOrNonVeg,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      VegOrNonVeg =
                                                          value.toString();
                                                    });
                                                  },
                                                ),
                                                const Text("NonVeg")
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 45,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Card(
                                  shadowColor: Color.fromARGB(255, 116, 25, 25),
                                  elevation: 10,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12))),
                                  child: Container(
                                    height: 50,
                                    width: 300,
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 116, 25, 25),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    child: const Center(
                                        child: Text(
                                      "Create Account",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => LoginAcc(),
                                      ));
                                },
                                child: Text("Login Here?")),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
