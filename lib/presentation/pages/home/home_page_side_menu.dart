import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../widgets/menu/side_menu/side_menu_page.dart';
import '../contact_page.dart';
import '../education_page.dart';
import '../experience/experience_page.dart';
import '../skills_page.dart';
import '../about_page.dart';
import '../projects/projects_page.dart';

class HomePageSideMenu extends StatefulWidget {
  const HomePageSideMenu({Key? key}) : super(key: key);

  @override
  State<HomePageSideMenu> createState() => _HomePageSideMenuState();
}

class _HomePageSideMenuState extends State<HomePageSideMenu> {
  late final PageController _pageController;
  // ignore: unused_field
  int _activePageIndex = 5;
  final int _pageLength = 6;

  _HomePageSideMenuState() {
    int initialPage = 1;
    if (kDebugMode) {
      initialPage = 1;
    }
    _pageController = PageController(initialPage: initialPage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Harold Professional Profile"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SideMenuPage(page: _pageController),
          Expanded(
            child: PageView.builder(
                controller: _pageController,
                itemCount: _pageLength,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: onPageChanged,
                itemBuilder: pageBuilder),
          ),
        ],
      ),
    );
  }

  Widget pageBuilder(context, pageIndex) {
    switch (pageIndex) {
      case 0:
        return const AboutPage();
      case 1:
        return ProjectsPage();
      case 2:
        return const SkillsPage();
      case 3:
        return ExperiencePage();
      case 4:
        return const EducationPage();
      case 5:
        return const ContactPage();
      default:
        return const AboutPage();
    }
  }

  void onPageChanged(page) {
    setState(() {
      _activePageIndex = page;
    });
  }
}
