import 'package:flutter/material.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Stack(
        children: [
          _TopImageSection(),
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

    return const Placeholder();
  }
}
