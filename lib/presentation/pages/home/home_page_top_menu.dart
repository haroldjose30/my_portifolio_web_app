import 'package:flutter/material.dart';

import '../../widgets/menu/nav_bar/nav_bar.dart';

class HomePageTopMenu extends StatelessWidget {
  final Widget child;
  const HomePageTopMenu({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const NavBar(),
          Expanded(child: child),
        ],
      ),
    );
  }
}
