import 'package:flutter/material.dart';

Widget infoRow(BuildContext context, IconData icon, String info) {
  return Row(
    spacing: 8,
    children: [
      DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryFixed,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
          child: Icon(icon, size: 18, color: Theme.of(context).colorScheme.primary),
        ),
      ),
      Text(info, style: TextStyle(fontSize: 16)),
    ],
  );
}
