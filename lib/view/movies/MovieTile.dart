import 'package:flutter/material.dart';

///@Author: Alberto Caliman
///@Scope: tile widget for movie list

class MovieTile extends StatelessWidget {
  String _filmImage;

  MovieTile(this._filmImage);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        child: new Image.network(_filmImage,fit: BoxFit.fill,),
      ),
    );
  }
}
