import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyText2!,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const _DefaultText(text: aboutText1),
                  const _DefaultText(text: aboutText2),
                  const _DefaultText(text: aboutText3),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16), // Image border
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(200), // Image radius
                      child: Image.asset(
                        'assets/images/harold_augusto1.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.linkedin),
                        onPressed: onLinkedinPressed,
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.github),
                        onPressed: onGithubPressed,
                      ),
                      IconButton(
                        icon: const FaIcon(FontAwesomeIcons.twitter),
                        onPressed: onTwitterPressed,
                      ),
                      const Spacer(),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
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

class _DefaultText extends StatelessWidget {
  const _DefaultText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      overflow: TextOverflow.visible,
      style: const TextStyle(
        fontWeight: FontWeight.normal,
        color: Color(0xFF74808a),
        fontSize: 16,
      ),
    );
  }
}
