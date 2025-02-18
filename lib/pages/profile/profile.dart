import 'package:evently/theme/apptheme.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme texttheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 16,
            bottom: 16,
            right: 16,
            top: 20,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppTheme.primary,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80),
            ),
          ),
          child: SafeArea(
            child: Row(
              children: [
                Image.asset('assets/image/route_logo.png'),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Abdelrahman Ghareeb',
                          style: texttheme.displaySmall),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'abdelrahmanghareeb2003@gamil.com',
                        style: texttheme.labelSmall,
                        softWrap: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppTheme.red,
          ),
          child: Row(
            children: [
              Icon(
                Icons.logout_rounded,
                color: AppTheme.white,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                'Logout',
                style: texttheme.titleLarge?.copyWith(
                  color: AppTheme.white,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
