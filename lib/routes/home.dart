import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "box-shadow");
            },
            child: const Text("box-shadow")),
      ],
    );
  }
}
