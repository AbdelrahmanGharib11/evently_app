import 'package:evently/models/category.dart';
import 'package:evently/theme/apptheme.dart';

import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  TabItem({super.key, required this.category, required this.isSelected});
  Categoryy category;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? AppTheme.white : AppTheme.primary,
        borderRadius: BorderRadius.circular(46),
        border: Border.all(
          color: AppTheme.white,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Icon(category.icon,
              color: isSelected ? AppTheme.primary : AppTheme.white),
          SizedBox(width: 12),
          Text(
            category.text,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: isSelected ? AppTheme.primary : AppTheme.white,
                ),
          ),
        ],
      ),
    );
  }
}
