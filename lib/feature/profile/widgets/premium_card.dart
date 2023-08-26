import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:move_app/theme_notifier.dart';

import '../../../config/global/constant/image_route.dart';
import '../../../config/theme/app_color.dart';
import '../../../config/theme/app_gradient.dart';
import '../../../config/theme/app_theme.dart';

class PremiumCard extends StatelessWidget {
  final ThemeNotifier themeNotifier;
  const PremiumCard({
    super.key,
    required this.theme,
    required this.themeNotifier,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.only(top: 25.h, left: 15.w, right: 15.w),
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          gradient: AppGradients.redGradient,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            color: themeNotifier.isDark
                ? theme.scaffoldBackgroundColor
                : AppColors.white,
          ),
          child: Row(
            children: [
              SvgPicture.asset(AppImageRoute.iconPremium),
              SizedBox(
                width: 20.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Join Premium!',
                        style: theme.textTheme.headlineMedium!
                            .copyWith(color: theme.primaryColor),
                        textAlign: TextAlign.left),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Enjoy watching Full-HD movies, \nwithout restrictions and without ads',
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: AppDynamicColorBuilder.getGrey700AndGrey300(
                            context),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              SvgPicture.asset(AppImageRoute.iconArrowRight)
            ],
          ),
        ),
      ),
    );
  }
}
