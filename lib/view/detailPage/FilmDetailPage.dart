import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviebox/MyColor.dart';
import 'package:moviebox/SizeConfig.dart';
import 'package:moviebox/model/Actor.dart';
import 'package:moviebox/model/Movie.dart';
import 'package:moviebox/view/categoryList/CategoryListWidget.dart';
import 'package:moviebox/view/detailPage/ActorTile.dart';

import 'SliverAppHeader.dart';

///@Author: Alberto Caliman
///@Scope: detail page for film

class FilmDetailPage extends StatelessWidget {
  Film _film;

  FilmDetailPage(this._film);

  Container _getCast(List<Actor> actors) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32),
            child: Text(
              "Cast & Crew",
              style: TextStyle(
                  fontFamily: "nova semibold",
                  color: MyColor.shopTileTxt,
                  fontSize: SizeConfig.blockSizeVertical * 2.67),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 32, top: 16),
            height: 150,
            child: ListView.builder(
              itemBuilder: (contex, position) {
                double padding = (position == 0) ? 32.0 : 28.0;
                return Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: padding,
                        right: actors.length - 1 == position ? 32.0 : 0.0),
                    child: ActorTile(actors[position]),
                  ),
                );
              },
              itemCount: actors.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }

  Container _getSummary() {
    return Container(
      margin: const EdgeInsets.only(left: 32, right: 32, top: 42, bottom: 42),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Plot Summary",
            style: TextStyle(
                fontFamily: "nova semibold",
                color: MyColor.shopTileTxt,
                fontSize: SizeConfig.blockSizeVertical * 2.67),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            _film.summary,
            style: TextStyle(
                color: MyColor.summaryTxt,
                fontFamily: "nova regular",
                fontSize: SizeConfig.blockSizeVertical * 1.78),
          )
        ],
      ),
    );
  }

  Container _getFilmInfo() {
    return Container(
      margin: EdgeInsets.only(left: 32, right: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                 _film.title,
                 style: TextStyle(
                     fontSize: SizeConfig.blockSizeVertical * 3.57,
                     fontFamily: "nova semibold",
                     color: MyColor.shopTileTxt),
               ),
              SizedBox(
                height: SizeConfig.blockSizeVertical * 1.1,
              ),
              Row(
                children: <Widget>[
                  Text(
                    _film.year.toString(),
                    style: TextStyle(
                        color: MyColor.txtBarDetailSecondRow,
                        fontFamily: "nova regular",
                        fontSize: SizeConfig.blockSizeVertical * 2),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 5.79,
                        right: SizeConfig.blockSizeHorizontal * 5.79),
                    child: Text(
                      _film.parentalGuidance,
                      style: TextStyle(
                          color: MyColor.txtBarDetailSecondRow,
                          fontFamily: "nova regular",
                          fontSize: SizeConfig.blockSizeVertical * 2),
                    ),
                  ),
                  Text(
                    _film.timeDuration.inSeconds.toString(),
                    style: TextStyle(
                        color: MyColor.txtBarDetailSecondRow,
                        fontFamily: "nova regular",
                        fontSize: SizeConfig.blockSizeVertical * 2),
                  ),
                ],
              )
            ],
          ),
          InkWell(
            child: Container(
              width: SizeConfig.blockSizeHorizontal * 15.45,
              height: SizeConfig.blockSizeVertical * 7.14,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                  borderRadius: BorderRadius.circular(20)),
            ),
            onTap: () => print("tap"),
          )
        ],
      ),
    );
  }

  Container _getContent() {
    return Container(
        margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 7),
        child: Column(
          children: <Widget>[
            _getFilmInfo(),
            CategoryListWidget(_film.listCategory, false),
            _getSummary(),
            _getCast(_film.actors),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: SliverAppHeader(
              _film,
              expandedHeight: 300,
            ),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _getContent(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
