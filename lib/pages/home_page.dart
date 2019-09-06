import 'package:bani/libraries/custom_icon_icons.dart';
import 'package:bani/pages/cast_page.dart';
import 'package:bani/pages/family_tree_page.dart';
import 'package:bani/pages/profile_page.dart';
import 'package:bani/pages/scan_page.dart';
import 'package:bani/pages/search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = "HomePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 2,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int pageIndex) {
    setState(() {
      _pageIndex = pageIndex;
    });
  }

  void onTap(int index) {
    print(index);
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          CastPage(),
          FamilyTreePage(),
          ScanPage(),
          SearchPage(),
          ProfilePage(),
        ],
        controller: _pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: _pageIndex,
        onTap: onTap,
        activeColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.cast)),
          BottomNavigationBarItem(icon: Icon(CustomIcon.flow_tree)),
          BottomNavigationBarItem(icon: Icon(Icons.photo_camera)),
          BottomNavigationBarItem(icon: Icon(Icons.contact_phone)),
          BottomNavigationBarItem(icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
