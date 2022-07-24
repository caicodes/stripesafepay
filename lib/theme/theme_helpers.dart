import 'package:flutter/material.dart';

Widget addVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}

Widget addHorizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

Widget appCardTile() {
  return const Card(
    child: ListTile(
      title: Text('List Tile in Card'),
      subtitle: Text('Tile Subtitle'),
      trailing: Text('trailing'),
    ),
  );
}
