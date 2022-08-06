import 'package:flutter/material.dart';
import 'package:volcano_app/configurations/font_end.dart';
import 'package:volcano_app/presentation/views/circle/circle.dart';
import 'package:volcano_app/presentation/views/profile/profile.dart';
import 'package:volcano_app/presentation/views/quantitative/quantitative.dart';

import '../home_view/home_view.dart';
import '../news/news.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    QuantitativeView(),
    CircleView(),
    NewsView(),
    ProfileView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/quantitative.png"),
            ),
            label: 'Quantitive',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icons/circle.png")),
            label: 'Circle',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Mine',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: FrontEndConfigs.kAppButtonColor,
        unselectedItemColor: FrontEndConfigs.kBlackColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
