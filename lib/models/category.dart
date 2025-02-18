import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categoryy {
  String id;
  String text;
  IconData icon;
  String imageName;

  Categoryy({
    required this.id,
    required this.text,
    required this.icon,
    required this.imageName,
  });

  static List<Categoryy> categories = [
    Categoryy(
      id: '1',
      text: 'All',
      icon: Icons.explore_outlined,
      imageName: 'All',
    ),
    Categoryy(
      id: '2',
      text: 'Sport',
      icon: Icons.directions_bike_rounded,
      imageName: 'sports',
    ),
    Categoryy(
      id: '3',
      text: 'Birthday',
      icon: Icons.cake_rounded,
      imageName: 'birthday',
    ),
    Categoryy(
      id: '4',
      text: 'Meeting',
      icon: CupertinoIcons.table,
      imageName: 'meeting',
    ),
    Categoryy(
      id: '5',
      text: 'Caming',
      icon: Icons.gamepad_rounded,
      imageName: 'gaming',
    ),
    Categoryy(
      id: '6',
      text: 'Eating',
      icon: Icons.fastfood_rounded,
      imageName: 'eat',
    ),
    Categoryy(
      id: '7',
      text: 'Holiday',
      icon: Icons.flight_takeoff_sharp,
      imageName: 'holiday',
    ),
    Categoryy(
      id: '8',
      text: 'Exhibition',
      icon: Icons.travel_explore_sharp,
      imageName: 'exhibition',
    ),
    Categoryy(
      id: '9',
      text: 'Workshop',
      icon: Icons.work_outline_rounded,
      imageName: 'workshop',
    ),
    Categoryy(
      id: '10',
      text: 'Bookclub',
      icon: Icons.menu_book_rounded,
      imageName: 'bookclub',
    ),
  ];
}
