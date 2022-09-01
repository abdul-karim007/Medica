import 'package:medicaApp/app/app.locator.dart';
import 'package:medicaApp/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignupViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  void navigateToLogin() {
    navigationService.navigateTo(Routes.loginView);
  }
}
