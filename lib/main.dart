import 'package:flutter/material.dart';
void main()=> runApp(
  MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
    ),
);
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Stamp Collector'),
      ),
      body: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
 
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int stamp_count=0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              
              children: <Widget>[
                Image.asset('gandhi.jpg',height: 100,width: 100,),
                Text('Gandhi Post',textAlign: TextAlign.center,),
                Padding(padding: EdgeInsets.all(10),),
                Text(stamp_count.toString()),
                Column
                (
                 crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: RaisedButton(
                    child: Text('+',style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
                    onPressed: ()=> setState(()=>stamp_count++),
                  ),
                  ),
                   Padding(padding: EdgeInsets.all(10),),

                   SizedBox(
                      width: 50,
                      height: 50,
                      child: RaisedButton(
                    child: Text('-',style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
                    onPressed:()=>setState(()=>stamp_count--),
                  )
                  )
                ],
                )
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Image.asset('bhagatsingh.jpg',height: 100,width: 100,),
                Text('Bhagat Singh \n Post'),
                  Padding(padding: EdgeInsets.all(10),),
                                  Text(stamp_count.toString()),

                Column
                (
                  children: <Widget>[
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: RaisedButton(
                    child: Text('+',style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
                    onPressed: ()=> setState(()=>stamp_count++),
                  ),
                  ),
                   Padding(padding: EdgeInsets.all(10),),

                   SizedBox(
                      width: 50,
                      height: 50,
                      child: RaisedButton(
                    child: Text('-',style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
                    onPressed: ()=> setState(()=>stamp_count--),
                  )
                  )
                ],
                )
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Image.asset('radhakrishnan.jpg',height: 100,width: 100,),
                Text('S.RadhaKrishnan \n Post'),
                  Padding(padding: EdgeInsets.all(10),),
                                  Text(stamp_count.toString()),

                Column
                (
                  children: <Widget>[
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: RaisedButton(
                    child: Text('+',style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
                    onPressed: ()=>setState(()=>stamp_count++), 
                  ),
                  ),
                   Padding(padding: EdgeInsets.all(10),),

                   SizedBox(
                      width: 50,
                      height: 50,
                      child: RaisedButton(
                    child: Text('-',style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
                    onPressed: ()=>setState(()=>stamp_count--),
                  )
                  ),
              
                ],
                )
              ],
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Image.asset('kasturba.jpg',height: 100,width: 100,),
                Text('Kasturba Gandhi \n Post'),
                  Padding(padding: EdgeInsets.all(10),),
                                  Text(stamp_count.toString()),

                Column
                ( 
                  children: <Widget>[
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: RaisedButton(
                    child: Text('+',style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
                    onPressed:()=>setState(()=>stamp_count++),
                  ),
                  ),
                  Container(),
                   Padding(padding: EdgeInsets.all(10),),

                   SizedBox(
                      width: 50,
                      height: 50,
                      child: RaisedButton(
                    child: Text('-',style: TextStyle(fontSize: 20,color: Colors.blueAccent),),
                    onPressed: ()=>setState(()=>stamp_count--),
                  )
                  )
                ],
                )
              ],
            ),
          ),
          Divider(),
        ],
      ),
      
    );
  }
}
