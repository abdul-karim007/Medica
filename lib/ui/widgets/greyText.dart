import 'package:flutter/material.dart';

greyText({
  required t,
  required double p
}) {
  return Padding(
    padding: EdgeInsets.only(left: p, right: p),
    child: Text(
      t,
      style: const TextStyle(color: Colors.grey, fontSize: 16),
    ),
  );
}
