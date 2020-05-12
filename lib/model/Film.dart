import 'package:moviebox/model/Actor.dart';
import 'package:moviebox/model/CategoryType.dart';

class Film{
  String title,summary,imgUrl,parentalGuidance;
  double rate;
  Duration timeDuration;
  List<CategoryType> listCategory;
  List<Actor> actors;
  double reviews;
  int criticReviews,totalVotes,year,metascore;

 // Film(this.title,this.rate,this.imgUrl);

  Film(this.title, this.rate, this.imgUrl, {this.summary, this.year,
      this.timeDuration, this.listCategory, this.actors, this.metascore,
      this.reviews,this.parentalGuidance,this.criticReviews,this.totalVotes});
  
}