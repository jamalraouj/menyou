import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menyou/constants/colors.dart';
import 'package:menyou/models/restaurant.dart';
import 'package:menyou/screens/home/widget/food_list.dart';
import 'package:menyou/screens/home/widget/food_list_view.dart';
import 'package:menyou/screens/home/widget/restaurant_info.dart';
import 'package:menyou/widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();



}
class _HomePageState extends State<HomePage>{
  var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              Icons.arrow_back_ios_outlined,
              Icons.search_outlined
            ),
            RestaurantInfo(),
            FoodList(selected,
                (int index){
                    setState(() {
                      selected = index;
                    });
                    pageController.jumpToPage(index);
                }, restaurant),
            Expanded(
                child: FoodListView(
                  selected,
                    (int index){
                    setState(() {
                      selected = index;
                    });
                    },
                  pageController,
                  restaurant
                )
            )
          ],
          // child: Text('Home Page'),

        ));

  }
}
