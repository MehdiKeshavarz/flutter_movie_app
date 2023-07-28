import 'package:flutter/material.dart';

import '../../theme/app_color.dart';

class MovieCardItem extends StatelessWidget {
  final int itemIndex;
  final int itemCount;
  final String movieCategory;
  final bool needsSpacing;

  const MovieCardItem({
    super.key,
    required this.itemCount,
    required this.itemIndex,
    required this.movieCategory,
    required this.needsSpacing,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: 150.0,
      margin: needsSpacing
          ? EdgeInsets.only(
              left: itemIndex == 0 ? 24.0 : 10.0,
              right: itemIndex == itemCount - 1 ? 24.0 : 0)
          : null,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage('assets/images/$movieCategory/$itemIndex.png'),
        ),
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          margin: const EdgeInsets.all(12),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color: theme.primaryColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            '10',
            style: theme.textTheme.labelSmall!.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
