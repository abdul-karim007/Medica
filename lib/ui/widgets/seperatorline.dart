import 'package:flutter/cupertino.dart';

sepLine({ctx}) {
  return Container(
    width: MediaQuery.of(ctx).size.width * .35,
    color: Color(0xffe5e5e5),
    height: MediaQuery.of(ctx).size.height * .003,
  );
}
