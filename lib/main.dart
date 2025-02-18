import 'package:evently/authentication/forgetpassword.dart';
import 'package:evently/authentication/login.dart';
import 'package:evently/authentication/rigesterscreen.dart';
import 'package:evently/screens/getready.dart';
import 'package:evently/screens/homescreen.dart';
import 'package:evently/screens/onBoarding.dart';
import 'package:evently/services/shared_keys.dart';
import 'package:evently/theme/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:evently/services/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageServices.init();
  runApp(const Evently());
}

class Evently extends StatelessWidget {
  const Evently({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool runforthefirsttime = LocalStorageServices.getbool(
          LocalStorageKeys.runforthefirsttime,
        ) ??
        false;
    bool loginpagekey = LocalStorageServices.getbool(
          LocalStorageKeys.loginpagekey,
        ) ??
        false;
    return MaterialApp(
      home: runforthefirsttime
          ? loginpagekey
              ? HomeScreen()
              : LoginScreen()
          : GetReadyScreen(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lighttheme,
      routes: {
        'getready': (context) => GetReadyScreen(),
        'onboarding': (context) => OnBoarding(),
        'login': (context) => LoginScreen(),
        'register': (context) => RigesterScreen(),
        'forget': (context) => ForgetPassword(),
        'home': (context) => HomeScreen(),
      },
    );
  }
}
