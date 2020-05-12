import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviebox/SizeConfig.dart';
import 'package:moviebox/model/CategoryType.dart';

import 'CategoryTile.dart';


///@Author: Alberto Caliman
class CategoryListWidget extends StatelessWidget {
  List<CategoryType> _eventsList;


  CategoryListWidget(this._eventsList);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: SizeConfig.blockSizeVertical*5,
      child: ListView.builder(
        itemBuilder: (contex, position) {
          double padding = (position==0)? 32.0:20.0;
          return Center(
            child: Padding(
              padding: EdgeInsets.only(left: padding,right: _eventsList.length-1 == position?32.0:0.0),
              child: CategoryTile(_eventsList[position]),
            ),
          );
        },
        itemCount: _eventsList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
