import 'package:medicaApp/ui/views/Login/loginView.dart';
import 'package:medicaApp/ui/views/signUp/signUpView.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: LoginView, initial: true),
  MaterialRoute(page: SignupView,),
],
dependencies: [LazySingleton(classType: NavigationService)]
)
class AppSetup{

}