import 'package:moviebox/model/CategoryType.dart';
import 'package:moviebox/model/Movie.dart';

import 'Actor.dart';

class FilmsList {
  List<Film> _filmsList = new List<Film>();

  FilmsList() {
    _filmsList.add(new Film(
      "Ford v Ferrari",
      8.2,
      "https://upload.wikimedia.org/wikipedia/en/a/a4/Ford_v._Ferrari_%282019_film_poster%29.png",
      actors: [
        new Actor(
            "https://m.media-amazon.com/images/M/MV5BMTM0NzYzNDgxMl5BMl5BanBnXkFtZTcwMDg2MTMyMw@@._V1_UY317_CR11,0,214,317_AL_.jpg",
            "Matt",
            "Damon",
            "Carroll Shelby"),
        new Actor(
            "https://m.media-amazon.com/images/M/MV5BMTkxMzk4MjQ4MF5BMl5BanBnXkFtZTcwMzExODQxOA@@._V1_UX214_CR0,0,214,317_AL_.jpg",
            "Christian",
            "Bale",
            "Ken Miles"),
        new Actor(
            "https://m.media-amazon.com/images/M/MV5BMTcwNzA5MDg0OV5BMl5BanBnXkFtZTcwMTU2NjE0Nw@@._V1_UY317_CR9,0,214,317_AL_.jpg",
            "Jon",
            "Bernthal",
            "Lee Iacocca"),
        new Actor(
            "https://m.media-amazon.com/images/M/MV5BZTM4ZDBhYWMtZmQ0Ny00YjI0LWFhMTEtM2IwNmZlZGQwYzJhXkEyXkFqcGdeQXVyMjA2Nzk2MDc@._V1_UY317_CR8,0,214,317_AL_.jpg",
            "Caitriona",
            "Balfe",
            "Mollie Miles"),
        new Actor(
            "https://m.media-amazon.com/images/M/MV5BM2I4NTgzYmQtZWFlYy00ZjNiLWJiNzQtNjlhZWJmMDk1MDNkXkEyXkFqcGdeQXVyMzYwNzUyOTM@._V1_UY317_CR50,0,214,317_AL_.jpg",
            "Josh",
            "Lucas",
            "Leo Beebe"),
      ],
      summary:
          "n 1963, Ford Motor Company Vice President Lee Iacocca proposes to Henry Ford II to purchase the cash-strapped Ferrari as a means to boost their car sales by participating in the 24 Hours of Le Mans. Enzo Ferrari however, uses Ford's offer to secure a more lucrative deal with Fiat that allows him to retain complete ownership of Scuderia Ferrari. In rejecting the proposed deal with Ford, Ferrari also intentionally insults both Ford Motors and Henry Ford II. In response, a furious Ford orders his racing division to build a car to defeat Ferrari at Le Mans. For this task, Iacocca hires Shelby American owner Carroll Shelby, a racing driver who won Le Mans in 1959 but was forced to retire due to a heart condition. In turn, Shelby enlists the help of Ken Miles, a hot-tempered British racer and struggling mechanic. ",
      listCategory: [
        CategoryType.Action,
        CategoryType.Biography,
        CategoryType.Drama,
        CategoryType.Sport
      ],
      year: 2019,
      timeDuration: new Duration(seconds: 120),
      parentalGuidance: "PG-13",
      metascore: 81,
      reviews: 8.2,
      criticReviews: 64,
      totalVotes: 150212,
    ));

    _filmsList.add(new Film(
        "Bad Boys for life",
        6.5,
        "https://www.movietele.it/files/images/gallery/105842/105842-219870.jpg",
      actors: [
        new Actor(
          "https://m.media-amazon.com/images/M/MV5BNTczMzk1MjU1MV5BMl5BanBnXkFtZTcwNDk2MzAyMg@@._V1_UY317_CR2,0,214,317_AL_.jpg",
          "Will",
          "Smith",
          "Mike"),
        new Actor(
          "https://m.media-amazon.com/images/M/MV5BMTQ4NzIzMDAxMF5BMl5BanBnXkFtZTcwMDIyMTI2MQ@@._V1_UX214_CR0,0,214,317_AL_.jpg",
          "Martin",
          "Lawrence",
          "Marcus"),
        new Actor(
          "https://m.media-amazon.com/images/M/MV5BMjA2NzA2NTMxNV5BMl5BanBnXkFtZTYwMjA1ODEy._V1_UY317_CR105,0,214,317_AL_.jpg",
          "Vanessa",
          "Hudgens",
          "Kelly"),
        new Actor(
          "https://m.media-amazon.com/images/M/MV5BOWJkNTYzMjQtNjAwOC00MDM4LTgzM2EtMzc3ZWQ1NTczMzQxXkEyXkFqcGdeQXVyMTQyOTM4MzU@._V1_UX214_CR0,0,214,317_AL_.jpg",
            "Alexander",
          "Ludwig",
          "Dorn"),
        new Actor(
          "https://m.media-amazon.com/images/M/MV5BNGQ3N2U0MjUtODIwYi00ZWZjLWJjMjEtMTdmNzQ2MzZkMGJmXkEyXkFqcGdeQXVyNjUxMjc1OTM@._V1_UY317_CR29,0,214,317_AL_.jpg",
          "Charles",
          "Melton",
          "Rafe"),
      ],
      summary: "Marcus and Mike have to confront new issues (career changes and midlife crises), as they join the newly created elite team AMMO of the Miami police department to take down the ruthless Armando Armas, the vicious leader of a Miami drug cartel.",
      listCategory: [
        CategoryType.Action,
        CategoryType.Comedy,
        CategoryType.Crime
      ],
      year: 2020,
      timeDuration: new Duration(seconds: 140),
      parentalGuidance: "PG-14",
      metascore: 59,
      reviews: 8,
      criticReviews: 229,
      totalVotes: 3452
    ));


    _filmsList.add(new Film(
        "Mission: Impossibile FALLOUT",
        9.2,
        "https://pad.mymovies.it/filmclub/2016/11/062/locandina.jpg",
      actors: [
        new Actor(
          "https://m.media-amazon.com/images/M/MV5BMTk1MjM3NTU5M15BMl5BanBnXkFtZTcwMTMyMjAyMg@@._V1_UY317_CR14,0,214,317_AL_.jpg",
            "Tom",
            "Cruise",
            "Ethan Hunt"),
        new Actor(
          "https://m.media-amazon.com/images/M/MV5BODI0MTYzNTIxNl5BMl5BanBnXkFtZTcwNjg2Nzc0NA@@._V1_UY317_CR26,0,214,317_AL_.jpg",
            "Henry",
            "Cavill",
            "August Walker"),
        new Actor(
          "https://m.media-amazon.com/images/M/MV5BMTMwMTgyMzc4MV5BMl5BanBnXkFtZTYwNjE5Mjk1._V1_UX214_CR0,0,214,317_AL_.jpg",
            "Ving",
            "Rhames",
            "Luther Stickell"),
        new Actor(
          "https://m.media-amazon.com/images/M/MV5BNzMwODE1NjA3OV5BMl5BanBnXkFtZTgwNTY5MzM2OTE@._V1_UX214_CR0,0,214,317_AL_.jpg",
            "Simon",
            "Pegg",
            "Benji Dunn"),
        new Actor(
          "https://m.media-amazon.com/images/M/MV5BNzA4NDA1MTA5NV5BMl5BanBnXkFtZTcwNjMyNTQ3OA@@._V1_UY317_CR6,0,214,317_AL_.jpg",
            "Rebecca",
            "Ferguson",
            "Ilsa Faust"),
      ],
        summary: "Two years after Ethan Hunt had successfully captured Solomon Lane, the remnants of the Syndicate have reformed into another organization called the Apostles. Under the leadership of a mysterious fundamentalist known only as John Lark, the organization is planning on acquiring three plutonium cores. Ethan and his team are sent to Berlin to intercept them, but the mission fails when Ethan saves Luther and the Apostles escape with the plutonium. With CIA agent August Walker joining the team, Ethan and his allies must now find the plutonium cores before it's too late.",
        listCategory: [
          CategoryType.Action,
          CategoryType.Adventure,
        ],
        year: 2018,
        timeDuration: new Duration(seconds: 154),
        parentalGuidance: "PG-14",
        metascore: 86,
        reviews: 9,
        criticReviews: 491,
        totalVotes: 4678
    ));
  }

  Film getMovie(int index) {
    return _filmsList[index];
  }

  int size() {
    return _filmsList.length;
  }
}
