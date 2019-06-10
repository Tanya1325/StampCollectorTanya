import 'package:flutter/material.dart';
void main()
{
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      )
    );
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stamp Collector'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add,color: Colors.white,size: 30,),
          ),
        ],
      ),

      
    );
  }
}