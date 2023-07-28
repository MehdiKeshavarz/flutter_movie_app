import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/global/constant/image_route.dart';
import '../../../config/theme/app_color.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Stack(
        children: [
          _TopImageSection(),
          _TopIconsSection(),
          _BottomSection(),
        ],
      ),
    );
  }
}

class _TopImageSection extends StatelessWidget {
  const _TopImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.sizeOf(context).height;
    const designHeight = 926.0;
    const imageHeight = 400.0;

    final heightRatio = screenHeight / designHeight;

    final responsiveImageHeight = heightRatio * imageHeight;

    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        begin: FractionalOffset.bottomLeft,
        end: FractionalOffset.center,
        colors: [
          Color(0xff181A20),
          Colors.white,
        ],
      ).createShader(bounds),
      blendMode: BlendMode.modulate,
      child: Image.asset(
        AppImageRoute.homeTopHeaderImage,
        fit: BoxFit.cover,
        height: responsiveImageHeight,
        width: double.infinity,
      ),
    );
  }
}

class _TopIconsSection extends StatelessWidget {
  const _TopIconsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 64.0),
      child: Row(
        children: [
          SvgPicture.asset(AppImageRoute.appLogo),
          const Spacer(),
          SvgPicture.asset(AppImageRoute.iconSearch),
          const SizedBox(width: 24),
          SvgPicture.asset(AppImageRoute.iconBell),
        ],
      ),
    );
  }
}

class _BottomSection extends StatelessWidget {
  const _BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Positioned(
      left: 24,
      bottom: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Dr. Strange 2',
            style: theme.textTheme.headlineMedium!.copyWith(
              color: AppColors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Action, Superhero, Science Fiction, ...',
            style: theme.textTheme.bodySmall!
                .copyWith(color: AppColors.white, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              //button Play
              SizedBox(
                height: 32,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppImageRoute.iconPlay),
                      const SizedBox(width: 8),
                      Text(
                        'play',
                        style: theme.textTheme.bodyMedium!.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              // button Add My List
              SizedBox(
                height: 32,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 2, color: AppColors.white),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppImageRoute.iconPlus),
                      const SizedBox(width: 8),
                      Text(
                        'My List',
                        style: theme.textTheme.bodyMedium!.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
