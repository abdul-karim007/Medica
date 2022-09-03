import 'package:flutter/material.dart';

smallText({required yourString}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 6.0),
    child: Text(
      yourString,
      style: TextStyle(fontSize: 14),
    ),
  );
}
