import 'package:flutter/material.dart';
import 'package:move_app/config/global/widgets/app_modal_actions.dart';
import 'package:move_app/config/global/widgets/app_modal_title.dart';
import 'package:move_app/config/theme/app_theme.dart';

showModelApp({
  required BuildContext context,
  required String modalTitle,
  required String primaryButtonTitle,
  required String secondaryButtonTitle,
  required Widget mainModalContent,
  required double initChildSize,
  required double minChildSize,
  required double maxChildSize,
}) =>
    showModalBottomSheet(
      isDismissible: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: const Color(0xff09101D).withOpacity(0.7),
      context: context,
      builder: (context) => Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
        child: DraggableScrollableSheet(
          initialChildSize: initChildSize,
          maxChildSize: maxChildSize,
          minChildSize: minChildSize,
          builder: (context, scrollController) => Container(
            decoration: BoxDecoration(
                color: AppDynamicColorBuilder.getWhiteAndDark2(context),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                )),
            child: CustomScrollView(
              physics: const NeverScrollableScrollPhysics(),
              controller: scrollController,
              slivers: [
                AppModalTitle(modalTitle: modalTitle),
                SliverToBoxAdapter(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mainModalContent,
                      AppModalAction(
                        primaryButtonTitle: primaryButtonTitle,
                        secondaryButtonTitle: secondaryButtonTitle,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
