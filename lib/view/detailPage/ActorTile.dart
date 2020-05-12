import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moviebox/MyColor.dart';
import 'package:moviebox/SizeConfig.dart';
import 'package:moviebox/model/Actor.dart';

///@Author: Alberto Caliman
///@Scope: tile widget for actor tile list

class ActorTile extends StatelessWidget {
  Actor _actor;


  ActorTile(this._actor);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(_actor.profilePic),
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            radius: 35,
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.33),
            child: Text(_actor.name,style: TextStyle(
              color: MyColor.shopTileTxt,
              fontSize: SizeConfig.blockSizeVertical*1.78,
              fontFamily: "nova semibold"
            ),),
          ),
          SizedBox(
            height:2 ,
          ),
          Text(_actor.surname,style: TextStyle(
              color: MyColor.shopTileTxt,
              fontSize: SizeConfig.blockSizeVertical*1.78,
              fontFamily: "nova semibold"
          ),),
          Padding(
            padding: EdgeInsets.only(top:SizeConfig.blockSizeVertical*0.44),
            child: Text(_actor.character,style: TextStyle(
                color: MyColor.txtBarDetailSecondRow,
                fontSize: SizeConfig.blockSizeVertical*1.78,
                fontFamily: "nova regular"
            ),),
          )
        ],
      ),
    );
  }
}
