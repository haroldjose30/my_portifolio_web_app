import 'package:flutter/material.dart';

import '../router/routes.dart';

class NavBarItem extends StatefulWidget {
  final String text;
  final String route;
  final Icon image;

  const NavBarItem({
    Key? key,
    required this.text,
    required this.route,
    required this.image,
  }) : super(key: key);

  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  bool hoover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          hoover = true;
        });
      },
      onExit: (value) {
        setState(() {
          hoover = false;
        });
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white60,
          onTap: onTap,
          child: Container(
            height: 60.0,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: widget.image,
                ),
                Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: hoover ? Colors.deepOrange : Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTap() {
    navKey.currentState?.pushNamed(widget.route);
    //FIXME: set state of collapsableHeight
    //setState(() {
    //collapsableHeight = 0.0;
    //});
  }
}
