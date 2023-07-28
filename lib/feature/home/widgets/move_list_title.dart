import 'package:flutter/material.dart';
import 'package:move_app/config/theme/app_theme.dart';

class MoveListTitle extends StatelessWidget {
  final String title;
  const MoveListTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return SliverPadding(
      padding: const EdgeInsets.all(24),
      sliver: SliverToBoxAdapter(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: theme.textTheme.headlineSmall!.copyWith(
                color: AppDynamicColorBuilder.getGrey900AndWhite(context),
              ),
            ),
            Text(
              'See all',
              style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.primaryColor, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
