import 'package:flutter/material.dart';
import 'package:flutter_css/routes/home.dart';
import 'package:flutter_css/routes/css_box_shadow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CSS',
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        ),
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const Home(),
        'box-shadow': (context) => const CssBoxShadow(),
      },
      initialRoute: "/",
    );
  }
}
