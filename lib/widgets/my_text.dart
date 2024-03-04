import 'package:flutter/widgets.dart';

class MyText extends StatelessWidget {
  const MyText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        decoration: TextDecoration.none,
        fontSize: 16,
      ),
    );
  }
}
