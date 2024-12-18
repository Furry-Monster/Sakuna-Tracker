import 'package:flutter/material.dart';
import 'package:sakuna_tracker/router/route_constants.dart';
import 'package:sakuna_tracker/router/screen_export.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case entryPointScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const EntryPoint(),
      );
    case homeScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      );
    case blogScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const BlogScreen(),
      );
    case galleryScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const GalleryScreen(),
      );
    case musicScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const MusicScreen(),
      );
    case videoScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const VideoScreen(),
      );
    case searchScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const SearchScreen(),
      );
    case settingScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const SettingScreen(),
      );
    case aboutScreenRoute:
      return MaterialPageRoute(
        builder: (context) => const AboutScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const ErrorScreen(),
      );
  }
}
