import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';
class allsongs extends StatefulWidget {
  const allsongs({super.key});

  @override
  State<allsongs> createState() => _allsongsState();
}

class _allsongsState extends State<allsongs> {
  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    requestPermission();
  }
  void requestPermission(){

     Permission.storage.request();


  }

  final AudioQuery=OnAudioQuery();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(

          title: Text("Music List"),

        ),

        body: FutureBuilder<List<SongModel>>(
          future: AudioQuery.querySongs(
            sortType: null,
            orderType: OrderType.ASC_OR_SMALLER,
            uriType: UriType.EXTERNAL,
              ignoreCase: true

          ),
          builder: (context, iteam) {


            if(iteam.data==null){

              return Center(child: CircularProgressIndicator(),);

            }
            if(iteam.data!.isEmpty){

              return Center(child: Text("no songs found "));

            }
            return  ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) => ListTile(
                leading: Icon(Icons.music_note),
                title: Text(iteam.data![index].displayName),
                subtitle: Text(iteam.data![index].artist.toString()),
                trailing: Icon(Icons.more_horiz),



              ),);



          },

        ),

      ),
    );
  }
}
