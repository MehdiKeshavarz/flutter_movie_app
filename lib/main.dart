import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:move_app/base_screen.dart';
import 'package:move_app/config/theme/app_theme.dart';
import 'package:move_app/theme_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(428, 926),
      builder: (context, child) => ChangeNotifierProvider(
        create: (context) => ThemeNotifier(),
        child: Consumer<ThemeNotifier>(
          builder: (context, ThemeNotifier themeNotifier, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme:
                  themeNotifier.isDark ? AppTheme.darkMode : AppTheme.lightMode,
              home: const BaseScreen(),
            );
          },
        ),
      ),
    );
  }
}
