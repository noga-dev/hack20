import 'package:best_flutter_ui_templates/form/userdetail.dart';
//import 'package:best_flutter_ui_templates/hotel_booking/hotel_home_screen.dart';
import 'package:flutter/widgets.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
     // imagePath: 'assets/fitness_app/fitness_app.png',
      //navigateScreen: FitnessAppHomeScreen(),
      navigateScreen: UserDetail(),
    ),
  ];
}
