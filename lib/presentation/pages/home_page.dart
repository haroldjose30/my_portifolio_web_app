import 'package:flutter/material.dart';

import 'navigation/nav_bar.dart';

class HomePage extends StatelessWidget {
  final Widget child;
  const HomePage({
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
