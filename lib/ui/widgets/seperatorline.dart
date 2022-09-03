import 'package:flutter/cupertino.dart';

sepLine({required ctx, required w}) {
  return Container(
    width: MediaQuery.of(ctx).size.width * w,
    color: Color(0xffe5e5e5),
    height: MediaQuery.of(ctx).size.height * .003,
  );
}
