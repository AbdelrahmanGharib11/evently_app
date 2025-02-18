import 'package:evently/theme/apptheme.dart';
import 'package:evently/widgets/customtextfield.dart';
import 'package:evently/widgets/eventCard.dart';
import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16,
              top: 10,
            ),
            child: CustomTextField(
              imagepath: 'assets/SVG/Icon Frame2.svg',
              hinttext: 'Search For Event',
              onChanged: (value) {},
              bordercolor: AppTheme.primary,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: ListView.separated(
                  itemBuilder: (_, index) {
                    return index == 9
                        ? Column(
                            children: [
                              EventCard(),
                              SizedBox(
                                height: 16,
                              )
                            ],
                          )
                        : EventCard();
                  },
                  separatorBuilder: (_, index) {
                    return SizedBox(
                      height: 16,
                    );
                  },
                  itemCount: 10),
            ),
          )
        ],
      ),
    );
  }
}
