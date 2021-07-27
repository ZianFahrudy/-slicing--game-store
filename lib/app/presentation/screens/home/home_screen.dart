import 'package:flutter/material.dart';

import 'local_widget/appbar_home.dart';
import 'local_widget/bottom_navbar.dart';
import 'local_widget/content_home.dart';
import 'local_widget/search_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  AppbarHome(),
                  SizedBox(height: 20),
                  SearchBar(),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(child: ContentHome()),
                ],
              ),
            ),
            BottomNavBarHome()
          ],
        ));
  }
}
