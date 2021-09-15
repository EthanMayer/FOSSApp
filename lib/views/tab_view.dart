import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'base_view.dart';
//import 'package:flip/utilities/styles.dart';

// Global keys for the tab bar to navigate to the correct classes.
GlobalKey<NavigatorState> firstTabNavKey = GlobalKey<NavigatorState>();
//GlobalKey<NavigatorState> secondTabNavKey = GlobalKey<NavigatorState>();
//GlobalKey<NavigatorState> thirdTabNavKey = GlobalKey<NavigatorState>();

/// Creates the tab bar at the bottom of the screen consisting of 3 tabs.
class TabView extends StatelessWidget {
  /// Builds the UI using widgets.
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: CupertinoColors.activeBlue,//Styles.gold,
        items: [
          // Home tab button.
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home'
          ),
          // Music tab button.
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.music_note_list),
              label: 'Music'
          ),
          // Drill tab button.
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.circle_grid_3x3),
              label: 'Drill'
          ),
        ],
      ),
      tabBuilder: (context, index) {
        //if (index == 0) {
          // Navigate to Home view.
          return CupertinoTabView(
            navigatorKey: firstTabNavKey,
            builder: (BuildContext context) => BaseView(),
          );
        // } else if (index == 1) {
        //   // Navigate to Music view.
        //   //MusicSongViewState(false).refreshData();
        //   return CupertinoTabView(
        //     navigatorKey: secondTabNavKey,
        //     //builder: (BuildContext context) => MusicSongView(),
        //   );
        // } else {
        //   // Navigate to Drill view.
        //   return CupertinoTabView(
        //     navigatorKey: thirdTabNavKey,
        //     //builder: (BuildContext context) => DrillShowView(),
        //   );
        //}
      },
    );
  }
}