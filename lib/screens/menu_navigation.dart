
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:myapp/screens/bookmark_screen.dart';
import 'package:myapp/screens/maintenance_screen.dart';
import 'dashboard_screen.dart';

class MenuNavigation extends StatefulWidget {
  const MenuNavigation({Key? key}) : super(key: key);

  @override
  _MenuNavigationState createState() => _MenuNavigationState();
}

class _MenuNavigationState extends State<MenuNavigation>{
  int menuIndex = 0;

  @override
  void initState() {
    super.initState();
    menuIndex = 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _mappingScreen(menuIndex),
        bottomNavigationBar: ConvexAppBar(
          items: const [
            TabItem(icon: Icons.dashboard, title: 'Dashboard'),
            TabItem(icon: Icons.bookmark, title: 'Bookmark'),
            TabItem(icon: Icons.history, title: 'History'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.settings, title: 'Settings'),
          ],
          backgroundColor: const Color.fromRGBO(184, 22, 45, 1.0),
          initialActiveIndex: menuIndex,
          onTap: (int i) => setState(() {
            menuIndex = i;
          }),
        )
    );
  }

  StatefulWidget _mappingScreen(int index){
    if (kDebugMode) {
      print('Select menu no $index');
    }
    switch (index) {
      case 0: {
        return const DashboardScreen();
      }break;
      case 1: {
        return const BookmarkScreen();
      }break;
      default:{
        print('This menu screen is not created yet');
      }
      return const MaintenanceScreen();
    }
  }
}


