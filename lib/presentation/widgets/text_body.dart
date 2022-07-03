import 'package:flutter/material.dart';

class TextBody extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;

  const TextBody(
    this.text, {
    this.fontWeight = FontWeight.normal,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 800),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        text,
        textAlign: TextAlign.justify,
        overflow: TextOverflow.visible,
        style: TextStyle(
          fontWeight: fontWeight,
          color: const Color(0xFF74808a),
          fontSize: 16,
        ),
      ),
    );
  }
}
