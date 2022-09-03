import 'package:medicaApp/ui/views/Categories/CategoriesView.dart';
import 'package:medicaApp/ui/views/FluidBottomNav/FluidBottomNavView.dart';
import 'package:medicaApp/ui/views/Login/loginView.dart';
import 'package:medicaApp/ui/views/signUp/signUpView.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(page: LoginView, initial: true),
  MaterialRoute(page: SignupView,),
  MaterialRoute(page: BtmNavView),
  MaterialRoute(page: CategoriesView)
],
dependencies: [LazySingleton(classType: NavigationService)]
)
class AppSetup{

}