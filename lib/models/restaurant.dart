import 'package:menyou/models/food.dart';

class Restaurant{
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String,List<Food>> menu;
  Restaurant(this.name,
      this.waitTime,
      this.distance,
      this.label,
      this.logoUrl,
      this.desc,
      this.score,
      this.menu);
  static Restaurant generateRestaurant(){
    return Restaurant("restaurant",
        "20-30",
        "2.4km",
        "resteurant",
        "assets/images/res_logo.png",
        "Orange sandwich",
        4.7,
        {
          "Recommend": Food.generateRecommendFoods(),
          "Popular": Food.generateRecommendFoods(),

        });
  }

}
