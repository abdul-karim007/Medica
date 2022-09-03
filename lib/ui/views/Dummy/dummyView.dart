import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medicaApp/ui/views/Dummy/dummyViewModel.dart';
import 'package:stacked/stacked.dart';

class Dummy extends StatelessWidget {
  const Dummy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DummyViewModel>.nonReactive(
        viewModelBuilder: () => DummyViewModel(),
        builder: (context, model, child) => Scaffold(
              body: Center(child: Text('This is Dummy to Support Bottom Nav Bar Funtionality'),),
            ));
  }
}
