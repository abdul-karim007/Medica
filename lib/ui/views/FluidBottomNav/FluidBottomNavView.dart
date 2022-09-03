import 'package:flutter/material.dart';
import 'package:medicaApp/Constants/txt.dart';
import 'package:medicaApp/ui/views/FluidBottomNav/FluidBottomNavViewModel.dart';
import 'package:stacked/stacked.dart';

class BtmNavView extends StatelessWidget {
  const BtmNavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BtmNavViewModel>.reactive(
        viewModelBuilder: () => BtmNavViewModel(),
        builder: (context, model, child) => Scaffold(
              body: Center(
                child: model.pages.elementAt(model.selected),
              ),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedIconTheme: IconThemeData(color: Colors.blue),
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                      ),
                      label: textConstant.home),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.calendar_month_outlined,
                      ),
                      label: textConstant.appointment),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.history,
                      ),
                      label: textConstant.history),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.receipt_outlined,
                      ),
                      label: textConstant.articles),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person_outline_outlined,
                      ),
                      label: textConstant.profile),
                ],
                currentIndex: model.selected,
                onTap: model.onItemTapped,
              ),
            ));
  }
}
