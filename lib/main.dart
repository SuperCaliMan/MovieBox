import 'package:flutter/material.dart';
import 'package:moviebox/SizeConfig.dart';
import 'package:moviebox/model/CategoryType.dart';
import 'view/categoryList/CategoryListWidget.dart';
import 'view/detailPage/FilmDetailPage.dart';
import 'view/movies/MovieListWidget.dart';
import 'view/shopList/ShopListWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovieBox',
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _onClickSearch() {
    print("On click search");
  }

  void _onClickMenu() {
    print("On click menu");
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.only(left: 32),
                child: InkWell(
                  child: Image.asset(
                    "assets/images/menu.png",
                    width: SizeConfig.blockSizeHorizontal*5.79,
                    height: SizeConfig.blockSizeVertical*2.67,
                  ),
                  onTap: () => _onClickMenu(),
                )),
            Spacer(),
            Padding(
                padding: const EdgeInsets.only(right: 32),
                child: InkWell(
                  child: Image.asset(
                    "assets/images/search.png",
                    width: 24,
                    height: 24,
                  ),
                  onTap: () => _onClickSearch(),
                ))
          ],
        ),
        body:
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: SizeConfig.blockSizeVertical*2.5,
              ),
              ShopListWidget(),
              SizedBox(
                height: SizeConfig.blockSizeVertical*2.5,
              ),
              CategoryListWidget(CategoryType.values),
              SizedBox(
                height: SizeConfig.blockSizeVertical*8,
              ),
              MovieListWidget(
                tapFilmCallBack: (film) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FilmDetailPage(film)));
                },
              ),
            ],
          ),
        )
    );
  }
}
