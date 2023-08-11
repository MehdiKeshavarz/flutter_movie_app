import 'package:flutter/material.dart';
import 'package:move_app/feature/explore/widgets/movies_filter.dart';
import 'package:move_app/feature/explore/widgets/search_and_filter_widget.dart';

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
          )
        ],
      ),
    );
  }
}
