import 'package:flutter/material.dart';

customTextButton({required f, required t}) {
  return TextButton(
      onPressed: () {
        f;
      },
      child: Text(
        t,
        style: TextStyle(fontSize: 16),
      ));
}
