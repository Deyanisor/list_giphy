import 'package:flutter/material.dart';
import 'package:list_giphy/models/Gif.dart';

import 'models/Gif.dart';
import 'models/futureGif.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Gif> futureGit;

  @override
  void initState() {
    super.initState();
    futureGit = GifName();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Consumo API'),
            ),
            body: Center(
              child: FutureBuilder<Gif>(
                  future: futureGit,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      print(snapshot.data);
                      return Text(snapshot.data!.userId.toString());
                    } else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }),
            )));
  }
}
