import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

class allsongs extends StatefulWidget {
  // static Future<void> requestPermission() async {
  //   final status = await Permission.audio.request();
  //   if (status != PermissionStatus.granted) {
  //
  //     print(status.isGranted);
  //     print("Permission denied");
  //   } else {
  //     print("Permission granted");
  //   }
  // }

  const allsongs({Key? key}) : super(key: key);
  static String id = "all_songs";

  @override
  State<allsongs> createState() => _allsongs();
}

class _allsongs extends State<allsongs> {
  late final OnAudioQuery audioQuery;
  late List<SongModel> audios;

  @override
  void initState() {
    super.initState();
    super.initState();
    audioQuery = OnAudioQuery();
    fetchAudios();
  }

  Future<void> fetchAudios() async {
    audios = await audioQuery.querySongs(
      sortType: null,
      orderType: OrderType.ASC_OR_SMALLER,
      uriType: UriType.EXTERNAL,
      ignoreCase: true,
    );
    setState(() {});
  }

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
          future: audioQuery.querySongs(
            sortType: null,
            orderType: OrderType.ASC_OR_SMALLER,
            uriType: UriType.EXTERNAL,
            ignoreCase: true,
          ),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(child: Text("Error: ${snapshot.error}"));
            }
            final songs = snapshot.data;
            if (songs == null || songs.isEmpty) {
              return Center(child: Text("No songs found"));
            }
            return ListView.builder(
              itemCount: songs.length,
              itemBuilder: (context, index) => ListTile(
                leading: Icon(Icons.music_note),
                title: Text(songs[index].title),
                subtitle: Text(songs[index].artist ?? ""),
                trailing: Icon(Icons.more_horiz),
              ),
            );
          },
        ),
      ),
    );
  }
}
