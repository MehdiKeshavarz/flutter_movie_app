import 'package:flutter/material.dart';
import 'package:move_app/config/global/widgets/movie_card_item.dart';

class MoviesGrid extends StatelessWidget {
  final int childCount;
  final String moviesCategory;
  const MoviesGrid({
    super.key,
    required this.childCount,
    required this.moviesCategory,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        childCount: childCount,
        (context, index) => MovieCardItem(
          itemCount: childCount,
          itemIndex: index,
          movieCategory: moviesCategory,
          needsSpacing: false,
        ),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 2.6,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
    );
  }
}
