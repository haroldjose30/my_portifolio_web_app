import 'package:flutter/material.dart';

class TextBody extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final double? fontSize;
  final EdgeInsetsGeometry? padding;

  const TextBody(
    this.text, {
    this.fontWeight = FontWeight.normal,
    this.fontStyle = FontStyle.normal,
    this.fontSize = 16,
    this.padding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 800),
      padding: padding,
      child: Text(
        text,
        //textAlign: TextAlign.start,
        //overflow: TextOverflow.visible,
        style: TextStyle(
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          color: const Color(0xFF74808a),
          fontSize: fontSize,
        ),
      ),
    );
  }
}
