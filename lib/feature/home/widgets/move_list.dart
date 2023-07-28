import 'package:flutter/material.dart';
import 'package:move_app/config/global/widgets/movie_card_item.dart';

class MoveList extends StatelessWidget {
  final int itemCount;
  final String movieCategory;
  const MoveList({
    super.key,
    required this.itemCount,
    required this.movieCategory,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return MovieCardItem(
              itemCount: itemCount,
              itemIndex: index,
              movieCategory: movieCategory,
              needsSpacing: true,
            );
          },
        ),
      ),
    );
  }
}
