import 'package:flutter/material.dart';

blueButton({required t, required ctx, required f}) {
  return SizedBox(
    width: MediaQuery.of(ctx).size.width * .85,
    height: MediaQuery.of(ctx).size.height * .07,
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
