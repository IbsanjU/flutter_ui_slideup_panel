import 'package:flutter/material.dart';
import 'package:flutter_ui_slideup_panel/string_generator.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;

  const PanelWidget({Key? key, required this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: controller,
      padding: EdgeInsets.zero,
      children: [
        SizedBox(height: 12),
        buildDragHandle(),
        SizedBox(height: 18),
        buildText(),
        SizedBox(height: 36),
      ],
    );
  }

  Widget buildText() => Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('This is a Random Generated Text...'),
            SizedBox(height: 32),
            Text('getRandomString(100)'),
            Text(getRandomString(100)),
            Text(getRandomString(100)),
            Text(getRandomString(100)),
            Text(getRandomString(1000)),
            Text(getRandomString(100)),
            Text(getRandomString(100)),
            Text(getRandomString(1000)),
            Text(getRandomString(100)),
            Text(getRandomString(100)),
            Text(getRandomString(100)),
            Text(getRandomString(100)),
            Text(getRandomString(100)),
          ],
        ),
      );

  Widget buildDragHandle() => Center(
        child: Container(
          width: 30,
          height: 5,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      );
}
