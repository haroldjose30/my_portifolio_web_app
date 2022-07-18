import 'package:flutter/material.dart';

import '../../../models/experience_model.dart';
import '../../widgets/page_template_central.dart';
import '../../widgets/text_section_title.dart';
import '../../widgets/timeline.dart';
import 'experience_card.dart';

class ExperiencePage extends StatelessWidget {
  late final List<ExperienceModel> experiences;
  ExperiencePage({Key? key}) : super(key: key) {
    experiences = dataExperienceModels;
  }

  @override
  Widget build(BuildContext context) {
    return PageTemplateCentral(
      child: Column(
        children: [
          const TextSectionTitle("Professional Experience"),
          Timeline(
            indicators: [
              for (var experience in experiences)
                getIcon(experience: experience),
            ],
            children: [
              for (var experience in experiences)
                ExperienceCard(experience: experience),
            ],
          ),
        ],
      ),
    );
  }

  Widget getIcon({
    required ExperienceModel experience,
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
