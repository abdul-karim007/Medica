import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:medicaApp/Constants/img.dart';
import 'package:medicaApp/Constants/txt.dart';
import 'package:medicaApp/ui/widgets/homeCard.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  var index;
    var hour = TimeOfDay.now().hour;
  greeting() {
    if (hour < 12) {
      return textConstant.morning;
    }
    if (hour < 17) {
      return textConstant.afternoon;
    }
    return textConstant.evening;
  }
final pageController = PageController(
          initialPage: 0, keepPage: true, viewportFraction: 1);

  
}
