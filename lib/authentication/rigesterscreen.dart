import 'package:evently/theme/apptheme.dart';
import 'package:evently/widgets/custombutton.dart';
import 'package:evently/widgets/customtextfield.dart';
import 'package:evently/widgets/flutterSwitcher.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RigesterScreen extends StatefulWidget {
  RigesterScreen({super.key});

  @override
  State<RigesterScreen> createState() => _RigesterScreenState();
}

class _RigesterScreenState extends State<RigesterScreen> {
  bool language = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordemailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screendim = MediaQuery.sizeOf(context);

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Rigester',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/image/Logo.png'),
              SizedBox(
                height: 24,
              ),
              CustomTextField(
                  validator: (value) {
                    if (value == null || value.length < 3) {
                      return 'name can\'t be less than 3 charachters';
                    }
                    return null;
                  },
                  controller: nameController,
                  imagepath: 'assets/SVG/profile.svg',
                  hinttext: 'Name'),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                  validator: (value) {
                    if (value == null || value.length < 5) {
                      return 'Invalid Email';
                    }
                    return null;
                  },
                  controller: emailController,
                  imagepath: 'assets/SVG/email.svg',
                  hinttext: 'Email'),
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
                  imagepath: 'assets/SVG/lock.svg',
                  showsuffix: true,
                  hinttext: 'Password'),
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
                  controller: repasswordemailController,
                  imagepath: 'assets/SVG/lock.svg',
                  showsuffix: true,
                  hinttext: 'Re Password '),
              SizedBox(
                height: 16,
              ),
              CustomButton(
                screendim: screendim,
                text: 'Create Account',
                onpressed: () {},
              ),
              SizedBox(
                height: 16,
              ),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: [
                    TextSpan(
                      text: 'Already Have Account?',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    TextSpan(
                      text: 'Login',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppTheme.primary,
                          ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pop(context);
                        },
                    ),
                  ],
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
