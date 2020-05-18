import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviebox/SizeConfig.dart';
import 'package:moviebox/model/CategoryType.dart';

import 'CategoryTile.dart';

class CategoryListWidget extends StatefulWidget {
  List<CategoryType> _eventsList;
  bool _isSelectable;
  CategoryListWidget(this._eventsList, this._isSelectable);
  @override
  _CategoryListWidgetState createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  CategoryType _categorySelected;
  ScrollController _scrollController = new ScrollController();

  void _tap(CategoryType category, index) {
    print(category.toString().split(".").last);
    if (widget._isSelectable) {
      setState(() {
        _categorySelected = category;
      });
      _scrollController.animateTo(SizeConfig.blockSizeHorizontal * 20 * index,
          duration: Duration(milliseconds: 300), curve: Curves.easeOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: SizeConfig.blockSizeVertical * 5,
      child: ListView.builder(
        controller: _scrollController,
        itemBuilder: (contex, position) {
          double padding = (position == 0) ? 32.0 : 20.0;
          return Center(
            child: Padding(
              padding: EdgeInsets.only(
                  left: padding,
                  right:
                      widget._eventsList.length - 1 == position ? 32.0 : 0.0),
              child: CategoryTile(
                  widget._eventsList[position],
                  _categorySelected != null &&
                      _categorySelected == widget._eventsList[position],
                  (category) => _tap(category, position)),
            ),
          );
        },
        itemCount: widget._eventsList.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
