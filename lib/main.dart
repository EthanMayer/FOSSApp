import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'views/tab_view.dart';

/// Called initially to start the app.
void main() => runApp(FOSSApp());

/// Base class of the app.
class FOSSApp extends StatelessWidget {
  /// Builds the UI using widgets.
  @override
  Widget build(BuildContext context) {
    // CupertinoApp is the iOS-style widget that acts as the root widget of the app.
    return CupertinoApp(
      title: 'FOSSApp',
      theme: CupertinoThemeData(brightness: Brightness.dark),
      home: TabView(),
    );
  }
}
