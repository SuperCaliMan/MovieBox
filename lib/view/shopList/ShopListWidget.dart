import 'package:flutter/material.dart';
import 'package:moviebox/SizeConfig.dart';
import 'package:moviebox/model/ShopList.dart';

import 'ShopTile.dart';

///@Author: Alberto Caliman
///@Scope: widget list to show all shop

class ShopListWidget extends StatefulWidget {
  @override
  _ShopListWidgetState createState() => _ShopListWidgetState();
}

class _ShopListWidgetState extends State<ShopListWidget> {
  ShopList _shopList;
  Shop _selectShop;
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    _shopList = new ShopList();
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.blockSizeVertical*7,
      child: ListView.builder(
        shrinkWrap: true,
        controller: _scrollController,
        itemBuilder: (context,index){
          Shop _shop =  _shopList.get(index);
          bool _isSelected = _selectShop != null && _selectShop.title == _shop.title;

          //default selec first element
          if(_selectShop == null && index == 0){
            _isSelected = true;
            _selectShop = _shop;
          }

          return Padding(
            padding: EdgeInsets.only(left: index==0?32.0:40.0, right: _shopList.size()-1==index?32.0:0.0),
            child: ShopTile(
              shop:_shop,
              isSelected: _isSelected,
              dataSelectionCallBack: (shop){
                setState(() {
                  _selectShop = shop;
                });
                _scrollController.animateTo(SizeConfig.blockSizeHorizontal*28*index,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOut
                );
              },
            ),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: _shopList.size(),
      )
    );
  }



}
