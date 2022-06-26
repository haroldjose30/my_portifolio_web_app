import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';

import 'side_menu_style.dart';

class SideMenuPage extends StatelessWidget {
  const SideMenuPage({required this.page, Key? key}) : super(key: key);
  final PageController page;

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      controller: page,
      // onDisplayModeChanged: (mode) {
      //   print(mode);
      // },
      style: sideMenuStyle,
      title: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 150,
              maxWidth: 150,
            ),
            child: CircleAvatar(
              radius: 50.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  'assets/images/harold_profile.png',
                ),
              ),
            ),
          ),
          const Divider(
            indent: 8.0,
            endIndent: 8.0,
          ),
        ],
      ),
      footer: const Text('v0.1'),
      items: [
        SideMenuItem(
          priority: 0,
          title: 'About',
          onTap: () {
            page.jumpToPage(0);
          },
          icon: const Icon(Icons.person),
        ),
        SideMenuItem(
          priority: 1,
          title: 'Projects',
          onTap: () {
            page.jumpToPage(1);
          },
          icon: const Icon(Icons.menu_book),
        ),
        SideMenuItem(
          priority: 2,
          title: 'Skills',
          onTap: () {
            page.jumpToPage(2);
          },
          icon: const Icon(Icons.auto_awesome),
        ),
        SideMenuItem(
          priority: 3,
          title: 'Experience',
          onTap: () {
            page.jumpToPage(3);
          },
          icon: const Icon(Icons.work),
        ),
        SideMenuItem(
          priority: 4,
          title: 'Education',
          onTap: () {
            page.jumpToPage(4);
          },
          icon: const Icon(Icons.school),
        ),
        SideMenuItem(
          priority: 5,
          title: 'Contact',
          onTap: () {
            page.jumpToPage(5);
          },
          icon: const Icon(Icons.call),
        ),
      ],
    );
  }
}
