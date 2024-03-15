import 'dart:convert';
import 'package:flutter/material.dart';
import 'models/Image_model.dart';
import 'package:http/http.dart';
import 'Widget/Imagelist.dart'

class App extends StatefulWidget{

  createState(){
    return AppState(); 
  }
 
}

class AppState extends State<App>{
  int counter = 0;
  List<ImageModel> images = [];
  void fetchImage () async{
    counter++;
   var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
   var imageModel = ImageModel.fromJson(jsonDecode(response));
   setState((){
   images.add.(imageModel);
  });
  }


  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(),
        appBar: AppBar(
          title: const Text('Gallery Of Objects'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:fetchData,
          child:Icon(Icons.add),
        )
        ),


    );
  }
}