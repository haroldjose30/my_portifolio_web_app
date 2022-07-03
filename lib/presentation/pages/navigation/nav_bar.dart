import 'package:flutter/material.dart';
import 'package:my_portifolio_web_app/presentation/pages/router/routes.dart';

import 'nav_bar_button.dart';
import 'nav_bar_item.dart';

double collapsableHeight = 0.0;

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  List<Widget> navBarItems = const [
    NavBarItem(
      text: 'About Me',
      route: routeAbout,
      image: Icon(Icons.person),
    ),
    NavBarItem(
      text: 'Projects and Portfolio',
      route: routeProjects,
      image: Icon(Icons.menu_book),
    ),
    NavBarItem(
      text: 'Skills',
      route: routeSkills,
      image: Icon(Icons.auto_awesome),
    ),
    NavBarItem(
      text: 'Professional Experience',
      route: routeExperience,
      image: Icon(Icons.work),
    ),
    NavBarItem(
      text: 'Education',
      route: routeEducation,
      image: Icon(Icons.school),
    ),
    NavBarItem(
      text: 'Contact',
      route: routeContact,
      image: Icon(Icons.call),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        AnimatedContainer(
          margin: const EdgeInsets.only(top: 79.0),
          duration: const Duration(milliseconds: 375),
          curve: Curves.ease,
          height: (width < 800.0) ? collapsableHeight : 0.0,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: navBarItems,
              ),
            ),
          ),
        ),
        Container(
          height: 80.0,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: LayoutBuilder(builder: (context, constraints) {
            if (width < 800.0) {
              return NavBarButton(
                onPressed: () {
                  //This is to open and close the animated container when the screen is of mobile size
                  if (collapsableHeight == 0.0) {
                    setState(() {
                      collapsableHeight = 240.0;
                    });
                  } else if (collapsableHeight == 240.0) {
                    setState(() {
                      collapsableHeight = 0.0;
                    });
                  }
                },
              );
            } else {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: navBarItems,
              );
            }
          }),
        ),
      ],
    );
  }
}
