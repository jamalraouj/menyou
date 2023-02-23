import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menyou/constants/colors.dart';
import 'package:menyou/screens/home/widget/restaurant_info.dart';
import 'package:menyou/widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();



}
class _HomePageState extends State<HomePage>{

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
          ],
          // child: Text('Home Page'),

        ));

  }
}
