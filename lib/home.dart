import 'package:flutter/material.dart';
import 'Pages/foodscreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final screens = [
    Foods(),
    const Center(child: Text('Restaurants', style: TextStyle(fontSize: 60))),
    const Center(child: Text('Search', style: TextStyle(fontSize: 60))),
    const Center(child: Text('Profile', style: TextStyle(fontSize: 60))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        fixedColor: Colors.orange,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.food_bank,
            ),
            label: 'Foods',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.restaurant,
            ),
            label: 'Restaurants',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          )
        ],
      ),
    );
  }
}
