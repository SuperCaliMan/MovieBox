import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:moviebox/SizeConfig.dart';
import 'package:moviebox/model/Film.dart';
import 'package:moviebox/model/FilmsList.dart';
import 'package:moviebox/tap.dart';
import 'package:moviebox/view/movies/MovieTile.dart';

import '../../MyColor.dart';

///@Author: Alberto Caliman
///@Scope: movie list widget

class MovieListWidget extends StatefulWidget {
  TabCallBack<Film> tapFilmCallBack;
  MovieListWidget({this.tapFilmCallBack});

  @override
  State createState() => _MovieListWidget();
}

class _MovieListWidget extends State<MovieListWidget> {
  FilmsList _filmsList = new FilmsList();
  Film _selectFilm;

  void _onDataSelect(Film film) {
    setState(() {
      _selectFilm = film;
    });
  }

  void _onTapFilm(Film film) {
    if (widget.tapFilmCallBack != null) {
      widget.tapFilmCallBack(film);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Swiper(
          layout: SwiperLayout.CUSTOM,
          onIndexChanged: (i) => _onDataSelect(_filmsList.getMovie(i)),
          onTap: (i) => _onTapFilm(_filmsList.getMovie(i)),
          customLayoutOption:
              new CustomLayoutOption(startIndex: -1, stateCount: 3)
                  .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
            new Offset(-SizeConfig.blockSizeHorizontal * 77,
                -SizeConfig.blockSizeVertical * 0.44),
            new Offset(0.0, 0.0),
            new Offset(SizeConfig.blockSizeHorizontal * 77,
                -SizeConfig.blockSizeVertical * 0.44)
          ]).addOpacity([0.2, 1, 0.2]),
          itemWidth: SizeConfig.blockSizeHorizontal * 60, //260,
          itemHeight: SizeConfig.blockSizeVertical * 40, //380.0,
          itemBuilder: (context, index) {
            return MovieTile(_filmsList.getMovie(index).imgUrl);
          },
          itemCount: _filmsList.size(),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 7,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              _selectFilm == null
                  ? _filmsList.getMovie(0).title
                  : _selectFilm.title,
              style: TextStyle(
                  fontSize: SizeConfig.blockSizeVertical * 3.5,
                  fontFamily: "nova semibold"),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: MyColor.starYellow,
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal * 3,
                  ),
                  Text(
                    "${_selectFilm == null ? _filmsList.getMovie(0).rate : _selectFilm.rate}",
                    style: TextStyle(
                        fontSize: SizeConfig.blockSizeVertical * 2.5,
                        fontFamily: "nova regular"),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
