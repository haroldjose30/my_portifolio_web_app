import 'package:flutter/material.dart';

import 'routes.dart';
import '../about_page.dart';
import '../contact_page.dart';
import '../education_page.dart';
import '../experience_page.dart';
import '../projects_page.dart';
import '../skills_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => const AboutPage());
      case routeAbout:
        return MaterialPageRoute(builder: (_) => const AboutPage());
      case routeContact:
        return MaterialPageRoute(builder: (_) => const ContactPage());
      case routeProjects:
        return MaterialPageRoute(builder: (_) => const ProjectsPage());
      case routeSkills:
        return MaterialPageRoute(builder: (_) => const SkillsPage());
      case routeExperience:
        return MaterialPageRoute(builder: (_) => ExperiencePage());
      case routeEducation:
        return MaterialPageRoute(builder: (_) => const EducationPage());
      default:
        return MaterialPageRoute(builder: (_) => const AboutPage());
    }
  }
}
