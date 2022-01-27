

Skip to content
Using Gmail with screen readers
Enable desktop notifications for Gmail.
OK  No thanks
Meet
New meeting
Join a meeting
Hangouts

Conversations
0.21 GB of 15 GB used
Terms · Privacy · Program Policies
Last account activity: 8 minutes ago
Details
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'dart:math';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      title: "Grid View",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String,dynamic>>_Items= List.generate(
      200,
          (index)=>{
        "id":index,
        "title": "Item $index",
        "height": Random().nextInt(150)+50.5,
      }
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
        centerTitle: true,
      ),
      body: MasonryGridView.count(
          crossAxisCount: 5,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          itemCount: _Items.length,
          itemBuilder: (context,index){
            return Card(
              color: Color.fromARGB(
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256),
                  Random().nextInt(256)),
              key: ValueKey(_Items[index]['id']),
              child: SizedBox(
                height: _Items[index]['height'],
                child: Center(
                  child: Text(_Items[index]['title']),
                ),
              ),
            );
          }),
    );
  }
}


class28(gridView).txt
Displaying class28(gridView).txt.