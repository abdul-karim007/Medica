import 'package:medicaApp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:medicaApp/app/app.locator.dart';

class LoginViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();

  void navigateToSignUp() {
    navigationService.navigateTo(Routes.signupView);
  }

  void navigateToHome() {
    navigationService.navigateTo(Routes.btmNavView);
  }
}
