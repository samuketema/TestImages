import 'package:flutter/material.dart';

class App extends StatefulWidget{

  createState(){
    return AppState();
  }

}

class AppState extends State<App>{
  int counter = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Gallery Of Objects'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:() => ,
          child:Icon(Icons.add),
        )
        ),


    );
  }
}