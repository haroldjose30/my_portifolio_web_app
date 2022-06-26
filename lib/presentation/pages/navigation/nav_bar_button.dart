import 'package:flutter/material.dart';

class NavBarButton extends StatefulWidget {
  final Function onPressed;

  const NavBarButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<NavBarButton> createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[50],
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: IconButton(
            icon: const Icon(
              Icons.menu,
              size: 25.0,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {
                widget.onPressed();
              });
            }),
      ),
    );
  }
}
