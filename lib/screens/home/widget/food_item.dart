import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menyou/models/food.dart';

class FoodItem extends StatelessWidget {
final Food food;

FoodItem(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: 110,
            height: 110,
            child: Image.asset(
              food.imgUrl,fit: BoxFit.fitHeight,

            ),
          )
        ],
        
      ),
    );
  }
}
