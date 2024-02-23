import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.black,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/44 1.png',
                alignment: Alignment.topCenter,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 138),
                  child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 290, left: 45),
                        child: Text(
                          "Dancing between       The shadows       Of rhythm ",
                          style: TextStyle(
                            fontSize: 43,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 65,
                      ),
                      Container(
                        child: Center(
                            child: Text(
                          "Get Starterd ",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                        width: 290,
                        height: 50,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.black12, spreadRadius: 1)
                          ],
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 83),
                        child: Text(
                          "by continuing you agree to terms                                                                        of services and  Privacy policy",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
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
    );
  }
}
