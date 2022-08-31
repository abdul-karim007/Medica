import 'package:flutter/material.dart';

Widget customButton(
    {required txt, required f, required img, required ctx}) {
  return Padding(
    padding: const EdgeInsets.only(top: 15.0),
    child: SizedBox(
      width: MediaQuery.of(ctx).size.width * .85,
      height: MediaQuery.of(ctx).size.height * .07,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(3),
          backgroundColor:
              MaterialStateProperty.all(Colors.white.withOpacity(1)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(
                color: Color(0xffE5E5E5),
                width: 2,
              ),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(img),
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                txt,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ],
        ),
        onPressed: f,
      ),
    ),
  );
}
