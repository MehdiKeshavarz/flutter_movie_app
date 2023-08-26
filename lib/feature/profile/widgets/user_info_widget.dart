import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/global/constant/image_route.dart';
import '../../../config/theme/app_theme.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //section image profile
        Stack(
          children: [
            Container(
              width: 100.w,
              height: 100.h,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImageRoute.userProfileImage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 10,
              child: SizedBox(
                height: 30.h,
                width: 30.w,
                child: SvgPicture.asset(
                  AppImageRoute.iconEditProfile,
                ),
              ),
            )
          ],
        ),
        // section name & email user
        Container(
          margin: EdgeInsets.only(top: 10.h),
          child: Column(
            children: [
              Text(
                'Fardin keshavarz',
                style: theme.textTheme.headlineSmall!.copyWith(
                  color: AppDynamicColorBuilder.getGrey900AndWhite(context),
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'Fardin@gmail.com',
                style: theme.textTheme.bodySmall!.copyWith(
                  color: AppDynamicColorBuilder.getGrey900AndWhite(context),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
