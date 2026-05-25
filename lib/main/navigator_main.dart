import 'package:blibli_demo/pages/collect/collect_page.dart';
import 'package:blibli_demo/pages/home/home_page.dart';
import 'package:blibli_demo/pages/personal/personal_page.dart';
import 'package:blibli_demo/pages/rank/rank_page.dart';
import 'package:flutter/material.dart';

class MainTabNavigator extends StatefulWidget {
  const MainTabNavigator({super.key});

  @override
  State<MainTabNavigator> createState() => _MainTabNavigatorState();
}

class _MainTabNavigatorState extends State<MainTabNavigator> {

  int _currentIndex = 0;
  final List<Widget> _pages = const [
    HomePage(),
    RankPage(),
    CollectPage(),
    PersonalPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xFFFF6699),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        onTap: (i) {
          setState(() {
            _currentIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: "排行"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "收藏"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的"),
        ],
      ),
    );
  }
}

