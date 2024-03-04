import 'package:flutter/material.dart';

class ListCenter extends StatelessWidget {
  const ListCenter({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: children
          .map((e) => Align(
                alignment: Alignment.topCenter,
                child: e,
              ))
          .toList(),
    );
  }
}
