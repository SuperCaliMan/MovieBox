import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../MyColor.dart';
import '../../SizeConfig.dart';
import '../../model/Film.dart';

///@Author: Alberto Caliman
///@scope: custom header for detail page

class SliverAppHeader extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final Film _film;

  SliverAppHeader(this._film, {@required this.expandedHeight});

  void _onClickBack(BuildContext context) {
    Navigator.pop(context);
  }

  Container _getBar(BuildContext context) {
    Row _getElementInside() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Container(
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: MyColor.starYellow,
                    size: SizeConfig.blockSizeVertical * 3.2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 4),
                    child: Text(_film.reviews.toString() + "/10",
                        style: TextStyle(
                            fontFamily: "nova semibold",
                            fontSize: SizeConfig.blockSizeVertical * 1.68,
                            color: MyColor.shopTileTxt)),
                  ),
                  Text(_film.totalVotes.toString(),
                      style: TextStyle(
                          fontFamily: "nova semibold",
                          fontSize: SizeConfig.blockSizeVertical * 1.33,
                          color: MyColor.txtBarDetailSecondRow))
                ],
              ),
            ),
          ),
          Container(
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.star_border,
                  color: Colors.black,
                  size: SizeConfig.blockSizeVertical * 3.2,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4, bottom: 4),
                  child: Text(
                    "Rate this",
                    style: TextStyle(
                        fontFamily: "nova regular",
                        fontSize: SizeConfig.blockSizeVertical * 1.68,
                        color: MyColor.shopTileTxt),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Container(
                      width: SizeConfig.blockSizeVertical * 4,
                      height: SizeConfig.blockSizeHorizontal * 6,
                      color: MyColor.green,
                      child: Center(
                          child: Text(
                        _film.metascore.toString(),
                        style: TextStyle(
                            color: Colors.white, fontFamily: "nova regular"),
                      )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, bottom: 4),
                    child: Text("Metascore",
                        style: TextStyle(
                            fontFamily: "nova semibold",
                            fontSize: SizeConfig.blockSizeVertical * 1.68,
                            color: MyColor.shopTileTxt)),
                  ),
                  Text(_film.criticReviews.toString() + " critic review",
                      style: TextStyle(
                          fontFamily: "nova regular",
                          fontSize: SizeConfig.blockSizeVertical * 1.33,
                          color: MyColor.txtBarDetailSecondRow)),
                ],
              ),
            ),
          )
        ],
      );
    }

    return Container(
      width: MediaQuery.of(context).size.width - 32,
      height: SizeConfig.blockSizeVertical * 10,
      //color: Colors.green,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
          boxShadow: [
            BoxShadow(
                color: MyColor.blur,
                blurRadius: 100.0,
                spreadRadius: 10.0,
                offset: Offset(-20.0, 10.0))
          ]),
      child: _getElementInside(),
    );
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 1 - (shrinkOffset / expandedHeight),
          child: ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
            child: Container(
              constraints: BoxConstraints.expand(height: 300),
              child: Image.network(
                _film.imgUrl,
                fit: BoxFit.cover,
                height: 300,
              ),
            ),
          ),
        ),
        Positioned(
            bottom: -30,
            child: Opacity(
              opacity: 1 - (shrinkOffset / expandedHeight),
              child: _getBar(context),
            )),
        Positioned(
            left: 16,
            top: 40,
            child: Opacity(
              opacity: 1 - (shrinkOffset / expandedHeight),
              child: InkWell(
                child: Container(
                  width: 24,
                  height: 24,
                  child: Icon(
                    Theme.of(context).platform == TargetPlatform.android
                        ? Icons.arrow_back
                        : Icons.arrow_back_ios,
                    color: MyColor.shopTileTxt,
                    size: 24,
                  ),
                ),
                onTap: () => _onClickBack(context),
              ),
            ))
      ],
      overflow: Overflow.visible,
      alignment: Alignment.bottomRight,
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
