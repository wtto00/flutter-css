import 'package:flutter/material.dart';
import 'package:flutter_css/widgets/inner_shadow_painter.dart';
import 'package:flutter_css/widgets/my_text.dart';

class CssBoxShadow extends StatelessWidget {
  const CssBoxShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('box-shadow')),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 280,
          height: double.maxFinite,
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          alignment: Alignment.center,
          child: ListView(
            children: [
              Container(
                width: 280,
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(10, 5),
                      blurRadius: 5,
                      color: Colors.red,
                    ),
                  ],
                ),
                child: const MyText("box-shadow: 10px 5px 5px red;"),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 16)),
              Container(
                width: 280,
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(60, -16),
                      color: Colors.teal,
                    ),
                  ],
                ),
                child: const MyText("box-shadow: 60px -16px teal;"),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 16)),
              Container(
                width: 280,
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(12, 12),
                      blurRadius: 2,
                      spreadRadius: 1,
                      color: Color.fromRGBO(0, 0, 255, 0.2),
                    ),
                  ],
                ),
                child: const MyText(
                    "box-shadow: 12px 12px 2px 1px rgba(0, 0, 255, .2);"),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 16)),
              Container(
                width: 280,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                ),
                child: Stack(
                  children: [
                    CustomPaint(
                      size: const Size(double.maxFinite, double.maxFinite),
                      painter: InnerShadowPainter(
                        color: const Color.fromRGBO(255, 215, 0, 1),
                        offset: const Offset(80, 16),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: const MyText("box-shadow: inset 5em 1em gold;"),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 16)),
              Container(
                width: 280,
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(3, 3),
                      color: Colors.red,
                    ),
                    BoxShadow(
                      offset: Offset(-16, 0),
                      blurRadius: 6.4,
                      color: Color.fromRGBO(128, 128, 0, 1),
                    ),
                  ],
                ),
                child:
                    const MyText("box-shadow: 3px 3px red, -1em 0 .4em olive;"),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 16)),
              Container(
                width: 280,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                ),
                child: Stack(
                  children: [
                    CustomPaint(
                      size: const Size(double.maxFinite, double.maxFinite),
                      painter: InnerShadowPainter(
                        color: const Color.fromRGBO(0, 50, 0, 1),
                        offset: const Offset(0, -48),
                        blurRadius: 48
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: const MyText("box-shadow: inset 5em 1em gold;"),
                    ),
                  ],
                ),
              ),
              Container(
                width: 280,
                height: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(3, 3),
                      color: Colors.red,
                    ),
                    BoxShadow(
                      offset: Offset(-16, 0),
                      blurRadius: 6.4,
                      color: Color.fromRGBO(128, 128, 0, 1),
                    ),
                  ],
                ),
                child: const MyText(
                    "box-shadow: inset 0 -3em 3em rgba(0, 0, 0, 0.1), 0 0 0 2px rgb(255, 255, 255), 0.3em 0.3em 1em rgba(0, 0, 0, 0.3);"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
