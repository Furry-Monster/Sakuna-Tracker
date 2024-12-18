import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sakuna_tracker/router/route_constants.dart';
import 'package:sakuna_tracker/screens/blog/blog_screen.dart';
import 'package:sakuna_tracker/screens/gallery/gallery_screen.dart';
import 'package:sakuna_tracker/screens/home/home_screen.dart';
import 'package:sakuna_tracker/screens/music/music_screen.dart';
import 'package:sakuna_tracker/screens/setting/setting_screen.dart';
import 'package:sakuna_tracker/screens/video/video_screen.dart';
import 'package:sakuna_tracker/utils/constant.dart';

class EntryPoint extends StatefulWidget {
  const EntryPoint({super.key});

  @override
  State<EntryPoint> createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
  final List _pages = const [
    HomeScreen(),
    BlogScreen(),
    GalleryScreen(),
    MusicScreen(),
    VideoScreen(),
    SettingScreen(),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 600;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: SvgPicture.asset(
          "assets/logo/Shoplon.svg",
          colorFilter: ColorFilter.mode(
              Theme.of(context).iconTheme.color!, BlendMode.srcIn),
          height: 20,
          width: 100,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, searchScreenRoute);
            },
            icon: SvgPicture.asset(
              "assets/icons/Search.svg",
              height: 24,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).textTheme.bodyLarge!.color!,
                  BlendMode.srcIn),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, aboutScreenRoute);
            },
            icon: SvgPicture.asset(
              "assets/icons/info.svg",
              height: 24,
              colorFilter: ColorFilter.mode(
                  Theme.of(context).textTheme.bodyLarge!.color!,
                  BlendMode.srcIn),
            ),
          ),
        ],
      ),
      body: PageTransitionSwitcher(
        duration: defaultDuration,
        transitionBuilder: (child, animation, secondAnimation) {
          return FadeThroughTransition(
            animation: animation,
            secondaryAnimation: secondAnimation,
            child: child,
          );
        },
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: !isDesktop
          ? BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                if (index != _currentIndex) {
                  setState(() {
                    _currentIndex = index;
                  });
                }
              },
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.article),
                  label: 'Blog',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.photo_library),
                  label: 'Gallery',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.music_note),
                  label: 'Music',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.video_call),
                  label: 'Video',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                ),
              ],
            )
          : null,
      drawer: isDesktop
          ? Drawer(
              child: ListView(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    child: Text(
                      'Sakuna Tracker',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.article),
                    title: const Text('Blog'),
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text('Gallery'),
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        _currentIndex = 2;
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.music_note),
                    title: const Text('Music'),
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        _currentIndex = 3;
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.video_call),
                    title: const Text('Video'),
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        _currentIndex = 4;
                      });
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Settings'),
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        _currentIndex = 5;
                      });
                    },
                  ),
                ],
              ),
            )
          : null,
    );
  }
}
