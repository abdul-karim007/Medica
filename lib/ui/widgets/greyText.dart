import 'package:flutter/material.dart';

greyText({
  required t,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 12.0, right: 12),
    child: Text(
      t,
      style: const TextStyle(color: Colors.grey, fontSize: 16),
    ),
  );
}
