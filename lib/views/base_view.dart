import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BaseView extends StatelessWidget {

  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
            physics: NeverScrollableScrollPhysics(),
            slivers: [
              // Navigation bar at the top of the screen that contains the view title and navigation buttons.
              CupertinoSliverNavigationBar(
                automaticallyImplyLeading: false,
                largeTitle: Text(
                  'Home',
                  style: TextStyle(color: CupertinoColors.activeBlue/*Styles.gold*/),
                ),
              )
            ]
        )
    );
  }
}