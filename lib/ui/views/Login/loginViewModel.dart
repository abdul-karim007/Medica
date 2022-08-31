import 'package:practicestacked/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:practicestacked/app/app.locator.dart';

class LoginViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  String title = 'Startup View';

  void navigate() {
    navigationService.navigateTo(Routes.signupView);
  }
}
