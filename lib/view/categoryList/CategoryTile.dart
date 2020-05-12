import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviebox/MyColor.dart';
import 'package:moviebox/SizeConfig.dart';
import 'package:moviebox/model/CategoryType.dart';


///@Author: Alberto Caliman

class CategoryTile extends StatelessWidget{
  CategoryType _category;
  CategoryTile(this._category);

  void _clickRow(CategoryType categoryType){
    print(categoryType.toString().split(".").last);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: MyColor.categoryTileBorder,width: 1.5),
        borderRadius: BorderRadius.circular(50)
      ),
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.only(left: 24,right: 24,top: 8,bottom: 8),
          child: Text(_category.toString().split(".").last,style: TextStyle(color: MyColor.categoryTileTxt,fontSize: SizeConfig.blockSizeVertical*2,)),
        ),
        onTap: () => _clickRow(_category),
      )
    );
  }
}
