import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DoctorImageContainer extends StatelessWidget {
  late String img;
  DoctorImageContainer({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .2,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
      child: Image(
        image: AssetImage(
          img,
        ),
        height: 100,
      ),
    );
  }
}
