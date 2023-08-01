import 'package:flutter/material.dart';
import 'package:move_app/config/theme/app_color.dart';

import '../../theme/app_theme.dart';

class AppModalAction extends StatelessWidget {
  final String primaryButtonTitle;
  final String secondaryButtonTitle;
  const AppModalAction({
    super.key,
    required this.primaryButtonTitle,
    required this.secondaryButtonTitle,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Divider(
          color: AppDynamicColorBuilder.getDark3AndGrey200(context),
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: SizedBox(
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor:
                          AppDynamicColorBuilder.getPrimary100AndDark3(context),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Text(
                      secondaryButtonTitle,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color:
                            AppDynamicColorBuilder.getPrimaryAndWhite(context),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: SizedBox(
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Text(
                      primaryButtonTitle,
                      style: theme.textTheme.bodyLarge!
                          .copyWith(color: AppColors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
