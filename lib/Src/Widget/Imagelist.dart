import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/Image_model.dart';

class ImagesList extends StatelessWidget {
  final List<ImageModel> images;
  ImagesList(this.images);
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          padding:EdgeInsets.all(20.0),
          margin:EdgeInsets.all(20.0) ,
          child:Image.network(images[index].url)
        )
        
        ;
      },
      );
  }
}