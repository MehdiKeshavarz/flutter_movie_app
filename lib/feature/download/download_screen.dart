import 'package:flutter/material.dart';
import 'package:move_app/config/global/widgets/project_app_bar.dart';
import 'package:move_app/feature/download/widget/download_movie_item.dart';
import 'package:move_app/theme_notifier.dart';
import 'package:provider/provider.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) => Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 56),
          child: ProjectAppBar(
            appBarTitle: 'Download',
            action: [SearchAppBarAction()],
          ),
        ),
        body: SafeArea(
          child: Card(
            color: Colors.transparent,
            elevation: 0,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 6,
              itemBuilder: (context, index) => DownloadMovieItem(
                index: index,
                isDeleting: false,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
