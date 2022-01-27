import 'package:amazeyootest/Screens/tabsscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AMAZEYOOTEST',
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Kollektif',
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Kollektif',
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const TabsScreen(),
    );
  }
}
