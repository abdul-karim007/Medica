import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  late var f;
  late String t;
  BlueButton({Key? key, required this.t, required this.f}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: MediaQuery.of(context).size.width * .85,
    height: MediaQuery.of(context).size.height * .07,
    child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(45.0),
          )),
        ),
        onPressed: f,
        child: Text(t)),
  );
  }
}

