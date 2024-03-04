import 'package:flutter/material.dart';
import 'package:flutter_css/widgets/my_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter CSS')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(
              "box-shadow",
              onPressed: () {
                Navigator.pushNamed(context, "box-shadow");
              },
            ),
          ],
        ),
      ),
    );
  }
}
