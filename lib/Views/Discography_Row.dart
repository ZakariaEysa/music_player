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
        children:  [


          Row_Pictures(
            Pictures:   "assets/Rectangle 32.png",
          ),

          Row_Pictures(
            Pictures:   "assets/Rectangle 38.png",
          ),
          Row_Pictures(
            Pictures:   "assets/Rectangle 39.png",
          ),
          Row_Pictures(
            Pictures:   "assets/Rectangle 32.png",
          ),

          Row_Pictures(
            Pictures:   "assets/Rectangle 38.png",
          ),
          Row_Pictures(
            Pictures:   "assets/Rectangle 39.png",
          ),     Row_Pictures(
            Pictures:   "assets/Rectangle 32.png",
          ),

          Row_Pictures(
            Pictures:   "assets/Rectangle 38.png",
          ),
          Row_Pictures(
            Pictures:   "assets/Rectangle 39.png",
          ),
        ],
      ),
    );
  }
}
