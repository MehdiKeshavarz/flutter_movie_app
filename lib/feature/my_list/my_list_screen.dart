import 'package:flutter/material.dart';
import 'package:move_app/config/global/constant/image_route.dart';
import 'package:move_app/theme_notifier.dart';
import 'package:provider/provider.dart';

import '../../config/global/widgets/project_app_bar.dart';
import '../../config/theme/app_theme.dart';

class MyListScreen extends StatefulWidget {
  const MyListScreen({super.key});

  @override
  State<MyListScreen> createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) => Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 56),
          child: ProjectAppBar(
            appBarTitle: 'My List',
            action: [SearchAppBarAction()],
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(width: double.infinity),
              Image.asset(
                themeNotifier.isDark
                    ? AppImageRoute.emptyListDark
                    : AppImageRoute.emptyListLight,
                height: 200,
                fit: BoxFit.fitWidth,
              ),
              const SizedBox(height: 44),
              Text('Your List is Empty',
                  style: theme.textTheme.headlineMedium!
                      .copyWith(color: theme.primaryColor)),
              const SizedBox(height: 16),
              Text(
                'It seems that you haven\'t added\n any movies to the list',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge!.copyWith(
                    color: AppDynamicColorBuilder.getGrey800AndWhite(context),
                    fontWeight: FontWeight.w500,
                    height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
