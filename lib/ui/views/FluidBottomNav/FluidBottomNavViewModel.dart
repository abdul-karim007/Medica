import 'package:medicaApp/ui/views/Dummy/dummyView.dart';
import 'package:medicaApp/ui/views/Home/HomeView.dart';
import 'package:stacked/stacked.dart';

class BtmNavViewModel extends BaseViewModel {
  int selected = 0;
  List pages = [
    HomeView(),
    Dummy(),
    Dummy(),
    Dummy(),
    Dummy()
  ];
  void onItemTapped(int index) {
    selected = index;
    notifyListeners();
  }
}
