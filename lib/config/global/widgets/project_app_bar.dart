import 'package:flutter/material.dart ';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:move_app/config/global/constant/image_route.dart';
import 'package:move_app/config/theme/app_theme.dart';
import 'package:provider/provider.dart';

import '../../../theme_notifier.dart';

class ProjectAppBar extends StatelessWidget {
  final String appBarTitle;
  final List<Widget>? action;
  const ProjectAppBar({
    super.key,
    required this.appBarTitle,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return AppBar(
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(top: 24),
        child: Text(
          appBarTitle,
          style: theme.textTheme.headlineMedium!.copyWith(
            color: AppDynamicColorBuilder.getGrey900AndWhite(context),
          ),
        ),
      ),
      actions: action,
      leading: Padding(
        padding: const EdgeInsets.only(top: 24, left: 24),
        child: SvgPicture.asset(
          AppImageRoute.appLogo,
          width: 32,
          height: 32,
        ),
      ),
    );
  }
}

class SearchAppBarAction extends StatelessWidget {
  const SearchAppBarAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, ThemeNotifier themeNotifier, child) => Padding(
        padding: const EdgeInsets.only(top: 24, right: 24),
        child: SvgPicture.asset(
          AppImageRoute.iconSearch,
          color: AppDynamicColorBuilder.getGrey900AndWhite(context),
        ),
      ),
    );
  }
}
