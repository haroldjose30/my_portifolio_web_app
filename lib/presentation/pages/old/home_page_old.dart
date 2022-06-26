import 'package:flutter/material.dart';

import '../contact_page.dart';
import '../education_page.dart';
import '../experience_page.dart';
import '../skills_page.dart';
import '../about_page.dart';
import '../projects_page.dart';
import 'side_menu/side_menu_page.dart';

class HomePageOld extends StatefulWidget {
  const HomePageOld({Key? key}) : super(key: key);

  @override
  State<HomePageOld> createState() => _HomePageOldState();
}

class _HomePageOldState extends State<HomePageOld> {
  final PageController _pageController = PageController();
  int _activePageIndex = 0;
  final int _pageLength = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getTitle(_activePageIndex)),
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

  String getTitle(int pageIndex) {
    switch (pageIndex) {
      case 0:
        return "About Me";
      case 1:
        return "Projects and Portfolios";
      case 2:
        return "Skills";
      case 3:
        return "Professional Experience";
      case 4:
        return "Education";
      case 5:
        return "Get in Touch";
      default:
        return "Professional Profile";
    }
  }
}
