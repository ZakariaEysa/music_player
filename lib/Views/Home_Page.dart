import 'package:flutter/material.dart';
import 'package:music_player2/Views/Gallery_Page.dart';
import 'package:music_player2/serveses/allsongs_list.dart';
import 'package:permission_handler/permission_handler.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({super.key});
  static String id = "Home_Page";
  Future<bool> requestPermission() async {
    final status = await Permission.audio.request();
    if (status != PermissionStatus.granted) {
      return false;
      print("Permission denied");
    } else {
      return true;
      print("Permission granted");
    }
  }

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
                        padding: const EdgeInsets.only(top: 290, left: 45),
                        child: const Text(
                          "Dancing between       The shadows       Of rhythm ",
                          style: TextStyle(
                            fontSize: 43,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 65,
                      ),
                      GestureDetector(
                        onTap: () async {
                          //allsongs()
                          //    Navigator.pushNamed(context, Gallery_Page.id),
                          //                      );

                          bool stt = await requestPermission();
                          //  Navigator.pushNamed(context, allsongs.id);
                          if (stt == true) {
                            Navigator.pushNamed(context, Gallery_Page.id);
                          } else {}
                        },
                        child: Container(
                          child: const Center(
                              child: Text(
                            "Get Starterd ",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                          width: 290,
                          height: 50,
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(color: Colors.black12, spreadRadius: 1)
                            ],
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 83),
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
