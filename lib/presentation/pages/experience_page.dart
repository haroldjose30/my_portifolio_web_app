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
              title: Text(experience.company),
              subtitle: Text(experience.companyDescription),
            ),
            ListBody(
              children: [
                TextBody(
                  experience.jobName,
                  fontSize: 16,
                ),
                TextBody(
                  "${experience.jobStarted} - ${experience.jobFinished}",
                  fontSize: 10,
                )
              ],
            ),
            ListBody(
              children: [
                TextBody(
                  experience.jobDescription,
                  fontSize: 14,
                )
              ],
            ),
            for (var skill in experience.skillsList)
              ListBody(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextBody(
                      skill,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}
