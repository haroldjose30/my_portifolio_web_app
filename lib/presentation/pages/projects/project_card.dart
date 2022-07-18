import 'package:flutter/material.dart';

import '../../../models/project_model.dart';
import '../../widgets/text_body.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel project;

  const ProjectCard({
    required this.project,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 216,
      constraints: const BoxConstraints(
        minWidth: double.infinity,
      ),
      child: Card(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: getImageUrl(project.imageUrl),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextBody(
                    project.projectTitle,
                    fontSize: 18,
                    padding: const EdgeInsets.only(top: 8, right: 16),
                  ),
                  TextBody(
                    project.projectDescription,
                    fontSize: 14,
                    padding: const EdgeInsets.only(top: 8, right: 16),
                  ),
                  TextBody(
                    "Technologies: ${project.technologies}",
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    padding: const EdgeInsets.only(top: 16, right: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getImageUrl(String? imageUrl) {
    if (imageUrl != null && imageUrl.isNotEmpty) {
      return Image.asset(
        imageUrl,
        fit: BoxFit.fitHeight,
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
