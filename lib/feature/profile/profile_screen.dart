import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:move_app/config/global/widgets/project_app_bar.dart';
import 'package:move_app/feature/profile/widgets/user_info_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 56),
        child: ProjectAppBar(
          appBarTitle: 'profile',
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 15.h),
                child: UserInfoWidget(theme: theme),
              ),
            )
          ],
        ),
      ),
    );
  }
}
