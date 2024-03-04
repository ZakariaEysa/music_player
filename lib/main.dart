import 'package:flutter/material.dart';

import 'package:music_player/serveses/allsongs_list.dart';

import 'Views/Gallery_Page.dart';

import 'Views/Home_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // var Controller=Get.put(PlayerController());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Gallery_Page.id: (context) => Gallery_Page(),
        Home_Page.id: (context) => const Home_Page(),
      },
      //
        // initialRoute: Home_Page.id,
      home: allsongs(),
    );
  }
}
