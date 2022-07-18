import 'package:flutter/material.dart';
import 'package:my_portifolio_web_app/presentation/widgets/page_template_central.dart';
import 'package:my_portifolio_web_app/presentation/widgets/text_body.dart';

import '../widgets/text_boxed.dart';
import '../widgets/text_section_title.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageTemplateCentral(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const TextSectionTitle("My Skills"),
          const TextBody("10+ years", fontSize: 18),
          Container(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Wrap(
              children: const [
                TextBoxed("Mobile Development"),
                TextBoxed(".Net C#"),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const TextBody("5+ years", fontSize: 18),
          Container(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Wrap(
              children: const [
                TextBoxed("Android Java"),
                TextBoxed("Xamarin Forms/Classic"),
                TextBoxed("Git and GitFlow"),
                TextBoxed("Tech Leader"),
                TextBoxed("Project Management")
              ],
            ),
          ),
          const SizedBox(height: 20),
          const TextBody("3+ years", fontSize: 18),
          Container(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Wrap(
              children: const [
                TextBoxed("IOS Swift"),
                TextBoxed("UIKit"),
                TextBoxed("SwiftUI"),
                TextBoxed("Android Kotlin"),
                TextBoxed("Asp.net Core WebApi"),
                TextBoxed("Asp.net MVC"),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const TextBody("less than 1 year:", fontSize: 18),
          Container(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Wrap(
              children: const [
                TextBoxed("React Native "),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const TextBody("In Studie:", fontSize: 18),
          Container(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Wrap(
              children: const [
                TextBoxed("KMM - Kotlin Multiplatform Mobile"),
                TextBoxed("Flutter"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
