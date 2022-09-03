import 'package:flutter/material.dart';
import 'package:medicaApp/ui/widgets/homeIconCont.dart';
import 'package:medicaApp/ui/widgets/homeText.dart';

homeCatergories({ required ic, required t}) {
  return Column(
    children: [
      homeIconCont(icn: ic),
      homeText(txt: t),
    ],
  );
}
