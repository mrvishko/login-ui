// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';

import 'login_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.purple, Color(0xff130524)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: TweenAnimationBuilder(
                child: RichText(
                  textAlign: TextAlign.center
                    ,text: TextSpan(
                      text: 'THIS ',
                      style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 70,
                                 height: 1.0,
                                 fontFamily: "BebasNeue"),
                      children: [
                        TextSpan(
                          text: 'BLACK',
                          style: TextStyle(color: Colors.black,
                              fontSize: 70,
                              height: 1.0,
                              fontFamily: "BebasNeue"
                          )
                        ),
                        TextSpan(
                          text: ' FRIDAY',
                           style: TextStyle(color: Colors.white,
                               fontSize: 70,
                               height: 1.0,
                               fontFamily: "BebasNeue"
                           )
                        )
                      ]
                    ),

                ),
                // Title Animation
                // child: Text(
                //   "Welcome to Black Friday",
                //   style: TextStyle(
                //       color: Colors.white,
                //       fontSize: 70,
                //       height: 1.0,
                //       fontFamily: "BebasNeue"),
                // ),
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(milliseconds: 500),
                builder: (BuildContext context, double _value, child) {
                  return Opacity(
                    opacity: _value,
                    child: Padding(
                      padding: EdgeInsets.only(top: _value * 20),
                      child: child,
                    ),
                  );
                },
              ),
            ),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                
                image: DecorationImage(

                    image: AssetImage('images/start.png',),fit: BoxFit.fill),
              ),
            ),
            TweenAnimationBuilder( // Button Animation
              child: Padding(
                padding:  EdgeInsets.only(bottom: 20),
                child: Container(
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => (LoginScreen())),
                      );
                    },
                    height: 45,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Colors.purple,
                    child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(milliseconds: 500),
              builder: (BuildContext context, double _value, child) {
                return Opacity(
                  opacity: _value,
                  child: Padding(
                    padding: EdgeInsets.only(top: _value * 30),
                    child: child,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
