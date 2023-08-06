import 'package:flutter/material.dart';
import 'package:move_app/config/global/constant/app_static_data.dart';
import 'package:move_app/feature/explore/widgets/filter_title.dart';

import 'movies_filter.dart';

class ExploreModalItem extends StatefulWidget {
  const ExploreModalItem({super.key, required this.index});
  final int index;
  @override
  State<ExploreModalItem> createState() => _ExploreModalItemState();
}

class _ExploreModalItemState extends State<ExploreModalItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilterTitle(title: AppStaticData.exploreModalTitles[widget.index]),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: MoviesFilter(),
        )
      ],
    );
  }
}
