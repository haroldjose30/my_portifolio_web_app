import 'package:flutter/material.dart';

import '../../../models/project_model.dart';
import '../../widgets/page_template_central.dart';
import '../../widgets/text_section_title.dart';
import 'project_card.dart';

class ProjectsPage extends StatelessWidget {
  late final List<ProjectModel> projects;
  ProjectsPage({Key? key}) : super(key: key) {
    projects = dataProjectModels;
  }

  @override
  Widget build(BuildContext context) {
    return PageTemplateCentral(
        child: Column(
      children: [
        const TextSectionTitle("Projects and Portfolios"),
        for (var project in projects) ProjectCard(project: project),
      ],
    ));
  }
}
