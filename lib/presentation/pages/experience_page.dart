import 'package:flutter/material.dart';
import 'package:my_portifolio_web_app/presentation/widgets/text_section_title.dart';

import '../models/experience.dart';
import '../widgets/page_template_central.dart';
import '../widgets/text_body.dart';
import '../widgets/timeline.dart';

class ExperiencePage extends StatelessWidget {
  late final List<Experience> experiences;
  ExperiencePage({Key? key}) : super(key: key) {
    experiences = dataExperiences;
  }

  @override
  Widget build(BuildContext context) {
    return PageTemplateCentral(
      child: Timeline(
        indicators: [
          for (var experience in experiences) getIcon(experience: experience),
        ],
        children: [
          for (var experience in experiences)
            ExperienceCard(experience: experience),
        ],
      ),
    );
  }

  Widget getIcon({
    required Experience experience,
  }) {
    if (experience.iconData != null) {
      return Icon(experience.iconData);
    }

    var iconUrlisNullOrEmpty = experience.iconUrl?.isEmpty ?? false;
    if (!iconUrlisNullOrEmpty) {
      return Image.asset(
        experience.iconUrl!,
        height: 24,
        width: 24,
        fit: BoxFit.scaleDown,
      );
    }

    //default icon
    return const Icon(Icons.place);
  }
}

class ExperienceCard extends StatelessWidget {
  final Experience experience;

  const ExperienceCard({
    required this.experience,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ListTile(
              title: Text(
                "${experience.jobName} at ${experience.company}",
              ),
              isThreeLine: true,
              subtitle: Text(experience.companyDescription),
              trailing:
                  Text("${experience.jobStarted} - ${experience.jobFinished}"),
            ),
            ListBody(
              children: [
                TextBody(
                  experience.jobDescription,
                  fontSize: 14,
                  padding: const EdgeInsets.only(left: 16, right: 16),
                )
              ],
            ),
            const SizedBox(height: 16),
            for (var skill in experience.skillsList)
              ListBody(
                children: [
                  TextBody(
                    "${skill.group}: ${skill.name}",
                    fontSize: 14,
                    padding:
                        const EdgeInsets.only(left: 32, bottom: 8, right: 16),
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}
