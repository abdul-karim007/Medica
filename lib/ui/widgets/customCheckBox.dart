import 'dart:async';

import 'package:flutter/material.dart';

final StreamController<bool> checkBoxController =
    StreamController<bool>.broadcast();
Stream<bool> get checkBoxStream => checkBoxController.stream;

checkF(changedValue) {
  checkBoxController.sink.add(changedValue!);
}

customCheckBox() {
  return StreamBuilder(
      stream: checkBoxStream,
      initialData: false,
      builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
        return Theme(
          data: ThemeData(unselectedWidgetColor: Colors.blue),
          child: Checkbox(
              // activeColor: Colors.,
              value: snapshot.data,
              onChanged: (changedValue) {
                checkBoxController.sink.add(changedValue!);
              }),
        );
      });
}
