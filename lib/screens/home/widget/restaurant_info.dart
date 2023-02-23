import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menyou/models/restaurant.dart';

class RestaurantInfo extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    final restaurant = Restaurant.generateRestaurant();
    return Container(

      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    restaurant.name,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade50
                    ),
                    child: Text(restaurant.waitTime)
                  ),
                  Text(restaurant.distance),
                  Text(restaurant.label),
                ],)

              ],
            )
          ],
        )
      ],),
    );
  }
}