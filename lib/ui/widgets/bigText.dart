import 'package:flutter/material.dart';

class bigText extends StatelessWidget {
  late String t;
  late double f;
  bigText({Key? key, required this.t, required this.f}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 10),
      child: Text(
        t,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: f, color: Colors.black),
      ),
    );
  }
}
