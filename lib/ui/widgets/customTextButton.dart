import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  late String t;
  late Function f;
  CustomTextButton({Key? key, required this.f, required this.t})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          f();
        },
        child: Text(
          t,
          style: TextStyle(fontSize: 16),
        ));
  }
}
