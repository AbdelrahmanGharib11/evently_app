import 'package:evently/models/category.dart';
import 'package:evently/pages/home/tabItem.dart';
import 'package:evently/theme/apptheme.dart';
import 'package:evently/widgets/eventCard.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currrentindex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: Categoryy.categories.length,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 16,
              bottom: 16,
              top: 10,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppTheme.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back ✨',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppTheme.white,
                        ),
                  ),
                  Text(
                    'Abdelrahamn Ghareeb',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: AppTheme.white,
                        ),
                  ),
                  SizedBox(height: 16),
                  TabBar(
                    tabAlignment: TabAlignment.start,
                    dividerColor: Colors.transparent,
                    indicatorColor: Colors.transparent,
                    labelPadding: EdgeInsets.only(right: 10),
                    isScrollable: true,
                    onTap: (index) {
                      currrentindex = index;
                      setState(() {});
                    },
                    tabs: Categoryy.categories
                        .map(
                          (category) => TabItem(
                            category: category,
                            isSelected: currrentindex ==
                                    Categoryy.categories.indexOf(category)
                                ? true
                                : false,
                          ),
                        )
                        .toList(),
                  )
                ],
              ),
            ),
          ),
          // SizedBox(height:10,),
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
