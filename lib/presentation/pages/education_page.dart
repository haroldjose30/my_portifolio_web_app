import 'package:flutter/material.dart';
import 'package:my_portifolio_web_app/presentation/widgets/page_template_central.dart';

import '../widgets/text_section_title.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageTemplateCentral(
      child: Column(
        children: [
          const TextSectionTitle("Education"),
          SizedBox(
            height: 105,
            width: 390,
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  ListTile(
                    title: Text('FGV-Fundação Getulio Vargas'),
                    subtitle: Text(
                        'Master Business Administration, Project Management'),
                  ),
                  Text('2004 - 2005')
                ],
              ),
            ),
          ),
          SizedBox(
            height: 110,
            width: 390,
            child: Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  ListTile(
                    title: Text('IT College of Cuiabá'),
                    subtitle: Text(
                        'Graduate, Software Development\n1nd best evaluated in the dissertation'),
                  ),
                  Text('1998 - 2001'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
