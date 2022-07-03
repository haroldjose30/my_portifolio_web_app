import 'package:flutter/material.dart';

import '../contact_page.dart';
import '../education_page.dart';
import '../experience_page.dart';
import '../skills_page.dart';
import '../about_page.dart';
import '../projects_page.dart';
import 'side_menu/side_menu_page.dart';

class HomePageSideMenu extends StatefulWidget {
  const HomePageSideMenu({Key? key}) : super(key: key);

  @override
  State<HomePageSideMenu> createState() => _HomePageSideMenuState();
}

class _HomePageSideMenuState extends State<HomePageSideMenu> {
  final PageController _pageController = PageController();
  int _activePageIndex = 0;
  final int _pageLength = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Harold Professional Profile"),
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
        return const ProjectsPage();
      case 2:
        return const SkillsPage();
      case 3:
        return const ExperiencePage();
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
