import 'package:belajar_flutter_unit_2/discover_page.dart';
import 'package:belajar_flutter_unit_2/home_page.dart';
import 'package:belajar_flutter_unit_2/second_page.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int activeIndex = 0;

  List<Widget> pages = [
    DiscoverPage(),
    HomePage(),
    SecondPage(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[activeIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeIndex,
        onTap: (int index) {
          setState(() {
            activeIndex = index;
          });
          print(activeIndex);
        },
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          color: Colors.black,
        ),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: "TV News",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
