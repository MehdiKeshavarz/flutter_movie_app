import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:move_app/config/global/constant/app_static_data.dart';

import '../../../config/global/constant/image_route.dart';
import '../../../config/theme/app_color.dart';
import '../../../config/theme/app_theme.dart';
import '../../../theme_notifier.dart';

class ProfileOptions extends StatelessWidget {
  final int index;
  final ThemeNotifier themeNotifier;
  const ProfileOptions({
    super.key,
    required this.theme,
    required this.themeNotifier,
    required this.index,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.h, left: 12.w, right: 12.w),
      child: ListTile(
        title: Text(
          AppStaticData.profileOptionsData[index][0],
          style: theme.textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.w600,
            color: AppDynamicColorBuilder.getGrey900AndWhite(context),
          ),
        ),
        minLeadingWidth: 20,
        contentPadding: const EdgeInsets.all(0),
        visualDensity: VisualDensity(vertical: -2.w),
        trailing: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (index == 4)
              Text(
                'English (US)',
                style: theme.textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppDynamicColorBuilder.getGrey900AndWhite(context),
                ),
              ),
            if (index == 5)
              Switch(
                activeColor: AppColors.white,
                inactiveThumbColor: theme.primaryColor,
                activeTrackColor: theme.primaryColor,
                value: themeNotifier.isDark,
                onChanged: (value) {
                  themeNotifier.isDark
                      ? themeNotifier.isDark = false
                      : themeNotifier.isDark = true;
                },
              ),
            if (index != 5) ...[
              const SizedBox(
                width: 20,
              ),
              SvgPicture.asset(
                AppImageRoute.iconArrowRight,
                color: AppDynamicColorBuilder.getGrey900AndWhite(context),
              ),
            ],
          ],
        ),
        leading: SvgPicture.asset(
          AppStaticData.profileOptionsData[index][1],
          color: AppDynamicColorBuilder.getGrey900AndWhite(context),
        ),
      ),
    );
  }
}
