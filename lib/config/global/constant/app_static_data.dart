import 'image_route.dart';

class AppStaticData {
  static const List profileOptionsData = [
    ['Edit Profile', AppImageRoute.iconProfile],
    ['Notification', AppImageRoute.iconBell],
    ['Download', AppImageRoute.iconDownload],
    ['Security', AppImageRoute.iconSecurity],
    ['Language', AppImageRoute.iconLanguage],
    ['Dark Mode', AppImageRoute.iconEye],
    ['Help Center', AppImageRoute.iconHelp],
    ['Privacy policy', AppImageRoute.iconPrivacy],
  ];

  static const List<String> exploreModalTitles = [
    'Categories',
    'Regions',
    'Genre',
    'Time/Periods',
    'Sort'
  ];

  static const List<String> moviesFilter = [
    'Movie',
    'US',
    'Action',
    '2023',
    'Latest Release'
  ];

  static const List<String> downloadMoviesName = [
    'Lightyear',
    'Top Gun: Maverick',
    'Thor: Love & Thunder',
    'Stranger Things 4: Epi...',
    'Avatar: The Way of Wa...',
    'Doctor Strange in the ...',
  ];
}
