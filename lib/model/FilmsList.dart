import 'package:moviebox/model/CategoryType.dart';
import 'package:moviebox/model/Film.dart';

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
            "https://www.inkbrothers.com.au/uploads/3/0/2/3/3023284/people_orig.png",
            "Alberto",
            "Caliman",
            "pippo"),
        new Actor(
            "https://www.inkbrothers.com.au/uploads/3/0/2/3/3023284/people_orig.png",
            "Matt",
            "Damon",
            "pippo"),
        new Actor(
            "https://www.inkbrothers.com.au/uploads/3/0/2/3/3023284/people_orig.png",
            "Christian",
            "Bale",
            "pippo"),
        new Actor(
            "https://www.inkbrothers.com.au/uploads/3/0/2/3/3023284/people_orig.png",
            "Jon",
            "Bernhal",
            "pippo"),
        new Actor(
            "https://www.inkbrothers.com.au/uploads/3/0/2/3/3023284/people_orig.png",
            "Caitriona",
            "Balfe",
            "pippo"),
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

    _filmsList.add(new Film("Bad Boys for life", 6.5,
        "https://www.movietele.it/files/images/gallery/105842/105842-219870.jpg"));
    _filmsList.add(new Film("Mission: Impossibile FALLOUT", 9.2,
        "https://pad.mymovies.it/filmclub/2016/11/062/locandina.jpg"));
  }

  Film getMovie(int index) {
    return _filmsList[index];
  }

  int size() {
    return _filmsList.length;
  }
}
