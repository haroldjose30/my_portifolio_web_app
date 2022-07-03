import 'package:flutter/material.dart';

class TextBoxed extends StatelessWidget {
  final String text;

  const TextBoxed(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 200),
      color: Colors.grey[200],
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      child: Text(
        text,
        textAlign: TextAlign.center,
        overflow: TextOverflow.visible,
        style: const TextStyle(
          fontWeight: FontWeight.normal,
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }
}
