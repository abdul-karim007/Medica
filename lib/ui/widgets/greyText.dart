import 'package:flutter/material.dart';

class GreyText extends StatelessWidget {
  late String t;
  late double p;
  GreyText({Key? key, required this.t,
  required this.p}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: EdgeInsets.only(left: p, right: p),
    child: Text(
      t,
      style: const TextStyle(color: Colors.grey, fontSize: 16),
    ),
  );
  }
}


