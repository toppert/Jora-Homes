import 'package:flutter/material.dart';

import 'Login.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xfff0f1f5),
      body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(18),
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 150,
                  child: RichText(
                      text: const TextSpan(
                          text: 'Your',
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' Simplified partner',
                                style: TextStyle(
                                  color: Colors.black87,
                                ))
                          ])),
                ),
                SizedBox(
                  width: size.width,
                  height: size.height * .3,
                  child: Image.asset('assets/workout.png'),
                ),
                Container(
                  height: size.height * .3,
                  decoration: BoxDecoration(
                      //color: Colors.white,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(.2),
                          spreadRadius: 2,
                          blurRadius: 20,
                          offset: const Offset(0, 0),
                        )
                      ]),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [



                      Positioned(
                        bottom: -30,
                        right: 30,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (_) =>  Login()));
                          },
                        child: Container(
                          padding: const EdgeInsets.all(22),
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.blueAccent,
                                  Color(0xffff4590),
                                ],
                                stops: [
                                  0.0,
                                  1.0
                                ],
                                begin: FractionalOffset.topLeft,
                                end: FractionalOffset.bottomRight),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset('assets/right-arrow.png'),

                        ),
                      ),
                      ),
                    ],

                  ),
                ),
              ],
            ),
          )),
    );
  }
}