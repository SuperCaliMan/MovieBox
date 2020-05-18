import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviebox/MyColor.dart';
import 'package:moviebox/SizeConfig.dart';
import 'package:moviebox/model/CategoryType.dart';

import '../../tap.dart';

///@Author: Alberto Caliman

class CategoryTile extends StatelessWidget {
  CategoryType _category;
  bool isSelected;
  TabCallBack tabCallBack;
  Color _bgColor = Colors.transparent;
  Color _txtColor = MyColor.categoryTileTxt;
  Color _borderColor = MyColor.categoryTileBorder;

  CategoryTile(this._category, this.isSelected, this.tabCallBack) {
    if (isSelected) {
      _bgColor = MyColor.shopTilePink;
      _txtColor = Colors.white;
      _borderColor = Colors.white;
    } else {
      _txtColor = MyColor.categoryTileTxt;
      _bgColor = Colors.transparent;
      _borderColor = MyColor.categoryTileBorder;
    }
  }

  void _clickRow(CategoryType categoryType) {
    print(isSelected);
    tabCallBack(categoryType);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: _bgColor,
            border: Border.all(color: _borderColor, width: 1.5),
            borderRadius: BorderRadius.circular(50)),
        child: InkWell(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 8),
            child: Text(_category.toString().split(".").last,
                style: TextStyle(
                  color: _txtColor,
                  fontSize: SizeConfig.blockSizeVertical * 2,
                )),
          ),
          onTap: () => _clickRow(_category),
        ));
  }
}
