import 'package:flutter/material.dart';

import 'home_view.dart';
import 'menu_view.dart';

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MenuView(isTab: true, expandFlex: 1),
          HomeView(expandFlex: 5),
        ],
      ),
    );
  }
}
