import 'package:flutter/material.dart';

bigText({required t, required double f}) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, bottom: 10),
    child: Text(
      t,
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: f, color: Colors.black),
    ),
  );
}
