import 'package:flutter/material.dart';

homeCategFilter(
    {required txt, required Function func, required Function func2, required bool condForColor}) {
  return ElevatedButton(
    onPressed: () {
      func();
      func2();
    },
    child: Text(
      txt,
    ),
    style: ButtonStyle(
      elevation: MaterialStateProperty.all(3),
      foregroundColor: MaterialStateProperty.all(
          condForColor == true ? Colors.white : Colors.blue),
      backgroundColor: MaterialStateProperty.all(
          condForColor == true ? Colors.blue : Colors.white),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: BorderSide(
            color: condForColor == true ? Colors.white : Colors.blue,
            width: 1,
          ),
        ),
      ),
    ),
  );
}
