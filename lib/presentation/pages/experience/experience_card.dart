import 'package:flutter/material.dart';

import '../../../models/experience_model.dart';
import '../../widgets/text_body.dart';

class ExperienceCard extends StatelessWidget {
  final ExperienceModel experience;

  const ExperienceCard({
    required this.experience,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ListTile(
            title: TextBody(
              "${experience.jobName} at ${experience.company}",
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            isThreeLine: true,
            subtitle: TextBody(experience.companyDescription),
            trailing: TextBody(
              "${experience.jobStarted} - ${experience.jobFinished}",
              fontSize: 14,
            ),
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
    );
  }
}
