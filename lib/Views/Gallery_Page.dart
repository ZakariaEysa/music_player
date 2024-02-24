import 'package:flutter/material.dart';

import 'Discography_Row.dart';
import 'carousel_slider.dart';

class Gallery_Page extends StatefulWidget {
  @override
  _Gallery_PageState createState() => _Gallery_PageState();

  static String id = "Gallery_page";
}

class _Gallery_PageState extends State<Gallery_Page> {
  int currentIndexPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 100,
        child:  Row(
         children: [
           Padding(
             padding: const EdgeInsets.only(left: 10,bottom: 13),
             child: Column(
               children: [
                 IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.white,)),
                 Text("Favorite",style: TextStyle(color: Colors.white),)



               ],

             ),
           ),
           SizedBox(width: 20,),
           Padding(
             padding: const EdgeInsets.only(left: 10,bottom: 13),
             child: Column(
               children: [
                 IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
                 Text("Search ",style: TextStyle(color: Colors.white),)



               ],

             ),
           ),
           SizedBox(width: 20,),

           Padding(
             padding: const EdgeInsets.only(left: 10,bottom: 13),
             child: Column(
               children: [
                 IconButton(onPressed: (){}, icon: Icon(Icons.home,color: Colors.white,)),
                 Text("Home",style: TextStyle(color: Colors.white),)



               ],

             ),
           ),
           SizedBox(width: 20,),

           Padding(
             padding: const EdgeInsets.only(left: 10,bottom: 13),
             child: Column(
               children: [
                 IconButton(onPressed: (){}, icon: Icon(Icons.card_travel,color: Colors.white,)),
                 Text("Cart",style: TextStyle(color: Colors.white),)



               ],

             ),
           ),
           SizedBox(width: 20,),

           Padding(
             padding: const EdgeInsets.only(left: 10,bottom: 13),
             child: Column(
               children: [
                 IconButton(onPressed: (){}, icon: Icon(Icons.person,color: Colors.white,)),
                 Text("Profile",style: TextStyle(color: Colors.white),)



               ],

             ),
           ),








         ],
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Carousel_slider(currentIndexPage: 0),
          Discography_Pics_row(),
          Container(
            width: double.infinity,
            height: 80,
            color: Colors.red,
          ),

        ],
      ),
    );
  }
}

class Row_Pictures extends StatelessWidget {
  const Row_Pictures({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        height: 300,
        width: 130,
        child: Column(
          children: [
            Image.asset(
              "assets/Rectangle 32.png",
              fit: BoxFit.fill,
            ),
            Text("Dead inside")
          ],
        ));
  }
}
