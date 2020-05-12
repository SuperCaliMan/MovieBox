import 'dart:core';


class Shop{
  String title;


  Shop(this.title);



}

class ShopList{
  List<Shop> _shopList = List<Shop>();


  ShopList(){
    _shopList.add(new Shop("In Theater"));
    _shopList.add(new Shop("Box Office"));
    _shopList.add(new Shop("Comming Soon"));
  }

  Shop get(int index){
   return _shopList[index];
 }
 
 int size(){
   return _shopList.length;
 }
}