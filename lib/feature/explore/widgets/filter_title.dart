import 'package:flutter/material.dart';

import '../../../config/theme/app_theme.dart';

class FilterTitle extends StatelessWidget {
  const FilterTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: theme.textTheme.headlineSmall!.copyWith(
              color: AppDynamicColorBuilder.getGrey800AndWhite(context),
            ),
          ),
        ],
      ),
    );
  }
}
