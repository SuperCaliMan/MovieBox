import 'package:flutter/material.dart';
import 'package:moviebox/MyColor.dart';
import 'package:moviebox/SizeConfig.dart';
import 'package:moviebox/model/ShopList.dart';
import 'package:moviebox/tap.dart';

///@Author: Alberto Caliman
///@Scope: tile widget for shop list

class ShopTile extends StatelessWidget {
  final Shop shop;
  final bool isSelected;
  final TabCallBack<Shop> dataSelectionCallBack;

  ShopTile({@required this.shop,@required this.isSelected,this.dataSelectionCallBack});

  void _onTap(){
    if(shop != null) {
      dataSelectionCallBack(this.shop);
    }

    print("Tap: "+shop.title);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(shop.title,
            style: TextStyle(
                color: isSelected?MyColor.shopTileTxt:MyColor.shopTileTxt50,
                fontSize: SizeConfig.blockSizeVertical*3.5,
                fontFamily: "nova semibold"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: ClipRRect(
              child: Container(
                width: SizeConfig.blockSizeHorizontal*11,
                height: SizeConfig.blockSizeVertical*0.84,
                color: isSelected?MyColor.shopTilePink:Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
          )
        ],
      ),
      onTap: () => _onTap(),
    );
  }
}
