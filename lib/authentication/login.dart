import 'package:evently/services/shared_keys.dart';
import 'package:evently/services/shared_preferences.dart';
import 'package:evently/theme/apptheme.dart';
import 'package:evently/widgets/custombutton.dart';
import 'package:evently/widgets/customtextfield.dart';
import 'package:evently/widgets/flutterSwitcher.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool language = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var screendim = MediaQuery.sizeOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Image.asset('assets/image/Logo.png'),
              SizedBox(
                height: 24,
              ),
              CustomTextField(
                validator: (value) {
                  if (value == null || value.length < 5) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
                controller: emailController,
                hinttext: 'Email',
                imagepath: 'assets/SVG/email.svg',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                validator: (value) {
                  if (value == null || value.length < 5) {
                    return 'password can\'t be less than 8 charachters';
                  }
                  return null;
                },
                controller: passwordController,
                hinttext: 'Password',
                imagepath: 'assets/SVG/lock.svg',
                showsuffix: true,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('forget');
                  },
                  child: Text(
                    'Forget Password?',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppTheme.primary,
                        ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              CustomButton(
                onpressed: () {
                  Navigator.of(context).pushNamed('home');
                  LocalStorageServices.setbool(
                      LocalStorageKeys.loginpagekey, true);
                },
                screendim: screendim,
                text: 'Login',
              ),
              SizedBox(
                height: 24,
              ),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: [
                    TextSpan(
                      text: 'Don\'t Have Account?',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Create Account',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppTheme.primary,
                          ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.of(context).pushNamed('register');
                        },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: AppTheme.primary,
                      indent: 20,
                      endIndent: 15,
                    ),
                  ),
                  Text(
                    'Or',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppTheme.primary,
                        ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: AppTheme.primary,
                      indent: 15,
                      endIndent: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('onboarding');
                },
                child: Container(
                  height: screendim.height * 0.08,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: AppTheme.primary,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/SVG/super g.svg'),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Login With Google',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: AppTheme.primary,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              ToggleSwitcher(
                checked: language,
                unselectedwidget: Image.asset(
                  'assets/image/LR.png',
                  fit: BoxFit.cover,
                ),
                selectedwidget: Image.asset(
                  'assets/image/EG.png',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void login() {
    if (formkey.currentState!.validate()) {}
  }
}
