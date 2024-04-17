import 'package:flutter/material.dart';

import 'cart_view.dart';
import 'home_view.dart';
import 'menu_view.dart';

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MenuView(),
          HomeView(),
          CartView(),
        ],
      ),
    );
  }
}
