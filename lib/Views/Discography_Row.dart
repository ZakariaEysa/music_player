import 'package:flutter/material.dart';

import 'Gallery_Page.dart';

class Discography_Pics_row extends StatelessWidget {
  const Discography_Pics_row({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          // Image.asset("assets/afs.jpg",fit: BoxFit.cover,),

          Row_Pictures(),
          Row_Pictures(),
          Row_Pictures(),
          Row_Pictures(),
          Row_Pictures(),
          Row_Pictures(),
          Row_Pictures(),
          Row_Pictures(),
          Row_Pictures(),
          Row_Pictures(),
          Row_Pictures(),
          Row_Pictures(),
        ],
      ),
    );
  }
}
