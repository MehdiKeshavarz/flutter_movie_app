import 'package:flutter/material.dart';
import 'package:move_app/feature/home/widgets/move_list.dart';
import 'package:move_app/feature/home/widgets/move_list_title.dart';
import 'package:move_app/feature/home/widgets/top_header.dart';
import 'package:move_app/theme_notifier.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) => const Scaffold(
        body: CustomScrollView(
          slivers: [
            TopHeader(),
            MoveListTitle(title: 'Top 10 Movies This Week'),
            MoveList(itemCount: 6, movieCategory: 'top_movies'),
            MoveListTitle(title: 'New Releases'),
            MoveList(itemCount: 6, movieCategory: 'new_movies'),
          ],
        ),
      ),
    );
  }
}
