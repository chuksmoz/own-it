import 'package:auto_route/auto_route_annotations.dart';
import 'package:own_it/src/presentation/screen/sign_in/sign_in_screen.dart';
import 'package:own_it/src/presentation/screen/sign_up/personal_detail.dart';
import 'package:own_it/src/presentation/screen/splash_screen.dart';

@MaterialAutoRouter()
class $Router{

  @initial
  SignInScreen signInScreen;
  SplashScreen splashScreen;
  PersonalDeatail personalDeatail;
}