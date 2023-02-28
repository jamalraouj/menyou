import 'package:flutter/cupertino.dart';


class Food{
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num guantity;
  List<Map<String,String>> ingredients;
  String about;
  bool hightLight;

  Food(
      this.imgUrl,
      this.desc,
      this.name,
      this.waitTime,
      this.score,
      this.cal,
      this.price,
      this.guantity,
      this.ingredients,
      this.about,
      {this.hightLight=false});

  static List<Food> generateRecommendFoods(){
    return[
      Food("assets/images/dish1.png",
          "no1. in Sales",
          'Soba Soup',
          '50 min',
          4.5,
          "325 kcal",
          18,
          0,
          [{
            'Noodle':'assets/images/ingre1.png',
            'Shrimp':'assets/images/ingre1.png',
            'Egg':'assets/images/ingre1.png',
            'Scallion':'assets/images/ingre1.png',
          },
            {
              'Noodle':'assets/images/ingre1.png',
              'Shrimp':'assets/images/ingre1.png',
              'Egg':'assets/images/ingre1.png',
              'Scallion':'assets/images/ingre1.png',
            },
            {
              'Noodle':'assets/images/ingre1.png',
              'Shrimp':'assets/images/ingre1.png',
              'Egg':'assets/images/ingre1.png',
              'Scallion':'assets/images/ingre1.png',
            }],
      'about asjdnk',
      hightLight: true)
    ];

  }
}
