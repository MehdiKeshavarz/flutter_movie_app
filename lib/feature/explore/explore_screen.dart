import 'package:flutter/material.dart';
import 'package:move_app/feature/explore/widgets/movies_filter.dart';
import 'package:move_app/feature/explore/widgets/search_and_filter_widget.dart';

import '../../config/global/widgets/movies_grid.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          const SearchAndFilter(),
          SliverToBoxAdapter(
            child: MoviesFilter(),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            sliver: MoviesGrid(
              childCount: 6,
              moviesCategory: 'new_movies',
            ),
          )
        ],
      ),
    );
  }
}
