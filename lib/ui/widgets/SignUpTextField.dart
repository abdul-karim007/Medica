import 'package:flutter/material.dart';

signUpTextField({required ctx, required t, required i, required j}) {
  return Padding(
    padding: const EdgeInsets.only(top: 15.0),
    child: SizedBox(
        width: MediaQuery.of(ctx).size.width * .85,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: t,
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(i),
            suffixIcon: Icon(j),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20.0),
            ),
            filled: true,
          ),
        )),
  );
}
