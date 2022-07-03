import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portifolio_web_app/presentation/widgets/page_template_central.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/text_body.dart';
import '../widgets/text_section_title.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String aboutText1 = """
I have 18 years of experience in IT. Working since 2010 as Mobile Developer. In this time I have made many mobile applications in various platforms such as: IOS with Swift, Android with Java and kotlin, Xamarin with C#, and React Native.
""";

    const String aboutText2 = """
My professional objective is to continue growing and specializing in mobile technologies, more specifically in mobile software architecture.
""";

    const String aboutText3 = """
I enjoy creating innovative solutions using mobile and web technologies. I like to keep learning, helping people and making a difference wherever I go!
""";
    return PageTemplateCentral(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const TextSectionTitle("About Me"),
          const TextBody(aboutText1),
          const TextBody(aboutText2),
          const TextBody(aboutText3),
          Row(
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.linkedin),
                  onPressed: onLinkedinPressed,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.github),
                  onPressed: onGithubPressed,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.twitter),
                  onPressed: onTwitterPressed,
                ),
              ),
              const Spacer(),
            ],
          ),
          Image.asset(
            "assets/images/harold_augusto1.jpeg",
            height: 300,
            width: 300,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }

  void onLinkedinPressed() {
    _launchUrl("https://linkedin.com/in/haroldjose30");
  }

  void onGithubPressed() {
    _launchUrl("https://github.com/haroldjose30");
  }

  void onTwitterPressed() {
    _launchUrl("https://twitter.com/haroldjose30");
  }

  void _launchUrl(String url) async {
    Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) throw 'Could not launch $url';
  }
}
