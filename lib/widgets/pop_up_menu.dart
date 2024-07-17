import 'package:flutter/material.dart';
import 'package:mindlee_demo/utils/extensions.dart';

void popUpMenu(BuildContext context) {
  final RenderBox overlay =
      Overlay.of(context).context.findRenderObject() as RenderBox;
  showMenu(
    context: context,
    position: RelativeRect.fromRect(
      Rect.fromPoints(
        Offset(context.dynamicWidth(1), 1000),
        const Offset(100, 100),
      ),
      Offset.zero & overlay.size,
    ),
    items: [
      const PopupMenuItem(
        value: 1,
        child: Text(''),
      ),
      const PopupMenuItem(
        value: 2,
        child: Text(''),
      ),
    ],
  ).then((value) {
    if (value != null) {}
  });
}
