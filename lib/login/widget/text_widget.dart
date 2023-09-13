import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  final bool isChangeText;
  const TextWidget({super.key, required this.isChangeText});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.isChangeText
          ? "raka"
          : 'You have pushed the button this many times:',
    );
  }
}
