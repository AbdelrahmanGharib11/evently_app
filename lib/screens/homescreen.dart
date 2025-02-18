import 'package:evently/pages/favorite/favourite.dart';
import 'package:evently/pages/home/home.dart';
import 'package:evently/pages/map/map.dart';
import 'package:evently/pages/profile/profile.dart';
import 'package:evently/widgets/nav_bar_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;
  List<Widget> tabs = [
    Home(),
    MapTab(),
    Favourite(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (index) {
            currentindex = index;
            setState(() {});
          },
          selectedLabelStyle: Theme.of(context).textTheme.titleSmall,
          unselectedLabelStyle: Theme.of(context).textTheme.titleSmall,
          items: [
            BottomNavigationBarItem(
              icon: NavBarIcon(imageName: 'assets/SVG/Home 1.svg'),
              activeIcon: NavBarIcon(imageName: 'assets/SVG/Home 2.svg'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: NavBarIcon(imageName: 'assets/SVG/Vector.svg'),
              activeIcon: NavBarIcon(imageName: 'assets/SVG/Frame 28.svg'),
              label: 'Map',
            ),
            BottomNavigationBarItem(
              icon: NavBarIcon(imageName: 'assets/SVG/Icon Frame.svg'),
              activeIcon: NavBarIcon(imageName: 'assets/SVG/Heart.svg'),
              label: 'Love',
            ),
            BottomNavigationBarItem(
              icon: NavBarIcon(imageName: 'assets/SVG/profile2.svg'),
              activeIcon: NavBarIcon(imageName: 'assets/SVG/User_01.svg'),
              label: 'Profile',
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 40,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
