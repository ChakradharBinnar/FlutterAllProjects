import 'package:flutter/material.dart';
import 'package:food_order_application/DartFiles/create_account.dart';
import 'package:food_order_application/DartFiles/homePage.dart';

class LoginAcc extends StatefulWidget {
  LoginAcc({super.key});

  @override
  State<LoginAcc> createState() => LoginAccState();
}

class LoginAccState extends State<LoginAcc> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Color.fromARGB(255, 116, 25, 25),
                Colors.white
              ])),
            ),
            Padding(
              padding: EdgeInsets.only(top: 150),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60),
                        topLeft: Radius.circular(60),
                      ),
                    ),
                    alignment: Alignment.topCenter,
                    child: const Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'ConcertOne'),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 120, left: 70, right: 70),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 116, 25, 25),
                                blurRadius: 20,
                                offset: Offset(0, 5))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 7),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: TextFormField(
                            controller: userNameController,
                            decoration: const InputDecoration(
                                hintText: "Email or Mobile No",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 190, left: 70, right: 70),
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(255, 116, 25, 25),
                                    blurRadius: 20,
                                    offset: Offset(0, 5))
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, bottom: 7),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 18),
                              child: TextFormField(
                                controller: passwordController,
                                obscureText: true,
                                decoration: const InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextButton(
                            onPressed: () {
                              print("Press on Forgot password");
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(211, 158, 158, 158)),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const CreateAcc(),
                                          ));
                                    },
                                    child: const Text("Create Account"))
                              ],
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: InkWell(
                            onTap: () {
                              if (userNameController.text == "chikku@gmail.com" &&
                                  passwordController.text == "12345") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const homePage(),
                                    ));
                              }
                            },
                            child: Container(
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 116, 25, 25),
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Center(
                                  child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Courgette',
                                    color: Colors.white),
                              )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
