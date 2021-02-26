import 'package:flutter/material.dart';
import './two.dart';
/*
void main() => runApp(new MyFlutterApp());

class MyFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title : "My Music App",
        home : Scaffold(
            appBar: AppBar(title : Text("My first App screen") , ),
            body:  Material(
                color : Colors.lightBlueAccent,
                child : Center(
                    child : Text(
                      "Hello Flutter",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(color : Colors.white , fontSize: 40.0),
                    )
                )
            )
        )


    );
  }
  
}*/

void main(){
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    //theme: ThemeData(
      //fontFamily: 'Roboto',
      //brightness: Brightness.light,
      //primaryColor: Colors.yellow
    //),
    debugShowCheckedModeBanner: false,
    //title: Text('My first app'),
    home : MyWidget()
  ));
}