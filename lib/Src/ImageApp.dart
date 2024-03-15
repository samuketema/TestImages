import 'dart:convert';
import 'package:flutter/material.dart';
import 'models/Image_model.dart';
import 'package:http/http.dart';
import 'Widget/Imagelist.dart';

class App extends StatefulWidget{

  createState(){
    return AppState(); 
  }
 
}

class AppState extends State<App>{
  int counter = 0;
  List<ImageModel> images = [];


  void fetchImage() async{
    counter++;
   var response = await get(Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'));
   var imageModel = ImageModel.fromJson(json.decode(response.body));
   
   setState((){
   images.add(imageModel);
  });
  }


  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ImagesList(images),
        appBar: AppBar(
          title:  Text('Gallery Of Image Objects'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:fetchImage,
          child:Icon(Icons.add),
        )
        ),


    );
  }
}