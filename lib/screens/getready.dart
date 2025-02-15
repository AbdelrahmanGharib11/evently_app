import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:evently/theme/apptheme.dart';
import 'package:evently/widgets/flutterSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';

class GetReadyScreen extends StatefulWidget {
  GetReadyScreen({super.key});

  @override
  State<GetReadyScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<GetReadyScreen> {
  bool language = false;

  bool theme = false;
  int value = 0;

  @override
  Widget build(BuildContext context) {
    var screendim = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/image/Group 4.png'),
            Image.asset('assets/image/being-creative.png'),
            Text(
              'Personalize Your Experience',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: AppTheme.primary,
                  ),
            ),
            Text(
              'Choose your preferred theme and language to get started with a comfortable, tailored experience that suits your style.',
              style: Theme.of(context).textTheme.bodyLarge,
              softWrap: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Language',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: AppTheme.primary),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Theme',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: AppTheme.primary),
                ),
                ToggleSwitcher(
                  checked: language,
                  unselectedwidget: Icon(
                    Icons.wb_sunny_outlined,
                    color: AppTheme.white,
                  ),
                  selectedwidget: Icon(
                    Icons.nightlight,
                    color: AppTheme.primary,
                  ),
                  unselectedwidgetshown: Icon(
                    Icons.wb_sunny_outlined,
                    color: AppTheme.primary,
                  ),
                  selectedwidgetshown: Icon(
                    Icons.nightlight,
                    color: AppTheme.white,
                  ),
                ),
              ],
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
                  color: AppTheme.primary,
                ),
                child: Center(
                  child: Text(
                    'Let’s Start',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: AppTheme.white,
                        ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
