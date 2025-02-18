import 'package:evently/theme/apptheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventCard extends StatefulWidget {
  const EventCard({super.key});

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  bool isTabbed = false;
  @override
  Widget build(BuildContext context) {
    var screendim = MediaQuery.sizeOf(context);
    TextTheme texttheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      height: screendim.height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage('assets/image/birthday.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: screendim.width * 0.1,
            decoration: BoxDecoration(
              color: AppTheme.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Text(
                  '21',
                  style:
                      texttheme.titleLarge?.copyWith(color: AppTheme.primary),
                ),
                Text(
                  'Nov',
                  style:
                      texttheme.labelMedium?.copyWith(color: AppTheme.primary),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppTheme.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    'This is Omar\'s birthday',
                    style: texttheme.labelMedium,
                    softWrap: true,
                    maxLines: 3,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        isTabbed = !isTabbed;
                      });
                    },
                    icon: isTabbed
                        ? Icon(
                            CupertinoIcons.heart_solid,
                            color: AppTheme.primary,
                          )
                        : Icon(CupertinoIcons.heart, color: AppTheme.primary),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
