import 'package:flutter/material.dart';
import 'package:flutter_css/widgets/inner_shadow.dart';
import 'package:flutter_css/widgets/list_center.dart';
import 'package:flutter_css/widgets/my_text.dart';

class CssBoxShadow extends StatelessWidget {
  const CssBoxShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('box-shadow')),
      body: ListCenter(
        children: [
          const Padding(padding: EdgeInsets.symmetric(vertical: 16)),

          // box-shadow: 10px 5px 5px red;
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

          // box-shadow: 60px -16px teal;
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

          // box-shadow: 12px 12px 2px 1px rgba(0, 0, 255, .2);
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

          // box-shadow: inset 5em 1em gold;
          Stack(
            children: [
              Container(
                width: 280,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(width: 1),
                ),
                child: InnerShadow(
                  shadows: const [
                    BoxShadow(
                      offset: Offset(80, 16),
                      color: Color.fromRGBO(255, 215, 0, 1),
                    ),
                  ],
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                width: 280,
                height: 80,
                alignment: Alignment.center,
                child: const MyText("box-shadow: inset 5em 1em gold;"),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 16)),

          // box-shadow: 3px 3px red, -1em 0 .4em olive;
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
            child: const MyText("box-shadow: 3px 3px red, -1em 0 .4em olive;"),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 16)),

          // box-shadow: inset 0 -3em 3em rgb(0 200 0 / 30%),0 0 0 2px white,0.3em 0.3em 1em rgb(200 0 0 / 60%);
          Stack(
            children: [
              Container(
                width: 500,
                height: 120,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(4.8, 4.8),
                      blurRadius: 16,
                      color: Color.fromRGBO(200, 0, 0, 0.6),
                    ),
                    BoxShadow(spreadRadius: 2, color: Colors.white),
                  ],
                ),
              ),
              InnerShadow(
                shadows: const [
                  BoxShadow(
                    offset: Offset(0, -48),
                    blurRadius: 48,
                    color: Color.fromRGBO(0, 200, 0, 0.3),
                  ),
                ],
                child: Container(
                  width: 500,
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 120,
                alignment: Alignment.center,
                child: const MyText(
                    "box-shadow: inset 0 -3em 3em rgb(0 200 0 / 30%),0 0 0 2px white,0.3em 0.3em 1em rgb(200 0 0 / 60%);"),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 48)),

          // box-shadow: 0 0 0 2em #f4aab9,0 0 0 4em #20c03f;
          Stack(
            children: [
              Container(
                width: 500,
                height: 50,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(spreadRadius: 64, color: Color(0xff20c03f)),
                  ],
                ),
              ),
              Container(
                width: 500,
                height: 50,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(spreadRadius: 32, color: Color(0xfff4aab9)),
                  ],
                ),
                child: const MyText(
                    "box-shadow: 0 0 0 2em #f4aab9,0 0 0 4em #20c03f;"),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 48)),
        ],
      ),
    );
  }
}
