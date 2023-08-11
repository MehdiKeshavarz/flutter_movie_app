import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:move_app/config/global/constant/image_route.dart';
import 'package:move_app/config/global/utils/show_model.dart';

import '../../../config/global/constant/app_static_data.dart';
import '../../../config/theme/app_theme.dart';

class DownloadMovieItem extends StatelessWidget {
  final int index;
  final bool isDeleting;
  const DownloadMovieItem({
    super.key,
    required this.index,
    required this.isDeleting,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      margin: !isDeleting
          ? EdgeInsets.only(
              top: index == 0 ? 32 : 16, bottom: index == 5 ? 32 : 0)
          : null,
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/downloads/$index.png', width: 150.0),
              SvgPicture.asset(AppImageRoute.iconPlay, height: 24, width: 24),
            ],
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStaticData.downloadMoviesName[index],
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge!.copyWith(
                      color: AppDynamicColorBuilder.getGrey900AndWhite(context),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '1h 42m 33s',
                    style: theme.textTheme.bodyMedium!.copyWith(
                        color: AppDynamicColorBuilder.getGrey800AndGrey300(
                            context),
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: theme.primaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(6)),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 6),
                        child: Text(
                          '1.4GB',
                          style: theme.textTheme.labelSmall!.copyWith(
                              color: theme.primaryColor,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const Spacer(),
                      if (!isDeleting) ...{
                        GestureDetector(
                          onTap: () => showModelApp(
                              context: context,
                              modalTitle: 'Delete',
                              primaryButtonTitle: 'Yes, Delete',
                              secondaryButtonTitle: 'cancel',
                              mainModalContent: Column(
                                children: [
                                  const SizedBox(
                                    width: double.infinity,
                                  ),
                                  Text(
                                    'Are you sure you want to delete this \nmovie download?',
                                    textAlign: TextAlign.center,
                                    style:
                                        theme.textTheme.headlineSmall!.copyWith(
                                      color: AppDynamicColorBuilder
                                          .getGrey800AndWhite(context),
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 40),
                                    child: DownloadMovieItem(
                                      index: index,
                                      isDeleting: true,
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                ],
                              ),
                              initChildSize: .63,
                              minChildSize: .35,
                              maxChildSize: .63),
                          child: SvgPicture.asset(AppImageRoute.iconTrash),
                        )
                      }
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
