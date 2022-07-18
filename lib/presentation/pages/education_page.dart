import 'package:flutter/material.dart';
import 'package:my_portifolio_web_app/presentation/widgets/page_template_central.dart';

import '../widgets/text_section_title.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageTemplateCentral(
      child: Container(
        constraints: const BoxConstraints(
          minWidth: double.infinity,
        ),
        child: Column(
          children: const [
            TextSectionTitle("Education"),
            Card(
              child: ListTile(
                title: Text(
                  "FGV-Fundação Getulio Vargas",
                ),
                isThreeLine: true,
                subtitle:
                    Text("Master Business Administration, Project Management"),
                trailing: Text("2004 - 2005"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  "Afirmativo College",
                ),
                isThreeLine: true,
                subtitle: Text("Postgraduate, Government administration"),
                trailing: Text("2003 - 2004"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  "IT College of Cuiabá",
                ),
                isThreeLine: true,
                subtitle: Text(
                    "Graduate, Software Development\n1nd best evaluated in the dissertation"),
                trailing: Text("1998 - 2001"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
