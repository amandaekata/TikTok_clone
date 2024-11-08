import 'package:flutter/material.dart';
import 'package:tiktok_project/Model/video_model.dart';
import 'package:tiktok_project/Tiktok_home/video_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool scrollDetected = false;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<VideoModel> modelList = const [
    VideoModel(
      video: 'assets/IMG_4128.mp4',
      name: '@Amanda__ ',
      date: '. 1-28',
      music: 'Avicii - Waiting For You(ft. Asake)',
      caption: '#Harvoxx #00TD',
      comments: '64',
      picture: 'assets/IMG_4110.JPG',
    ),
    VideoModel(
      video: 'assets/second.mp4',
      name: '@NatureVids ',
      date: '. 1-29',
      music: 'Tems - Me and You(ft. Rhianna)',
      caption: 'We Love Trees',
      comments: '3422',
      picture: 'assets/nature.JPG',
    ),
    VideoModel(
      video: 'assets/food.mp4',
      name: '@FoodiesHub ',
      date: '. 1-29',
      music: 'Burna Boy - On Form(ft. Sza)',
      caption: 'Chicken & Chips',
      comments: '100',
      picture: 'assets/foodies.JPG',
    )
  ];

  List<VideoModel> foryouList = const [
    VideoModel(
        video: 'assets/program.mp4',
        name: '@codeWithAmy ',
        date: '. 1-30',
        music: 'Original sound - @codeWithAmy',
        caption: 'Introduction to API  #Flutter',
        comments: '72',
        picture: 'assets/program.jpg'),
    VideoModel(
        video: 'assets/animals.mp4',
        name: '@Insects_and_stuff ',
        date: '. 1-30',
        music: 'Original Sound - Insects_',
        caption: 'So many beautiful colors!\nJehovah is great',
        comments: '700',
        picture: 'assets/nature.JPG'),
    VideoModel(
        video: 'assets/outside.mp4',
        name: '@Outside ',
        date: ' .1-30',
        music: 'Original Sound - @Outside',
        caption: 'Go outside today. It is beautiful',
        comments: '2598',
        picture: 'assets/nature.JPG')
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            scrollDetected = !scrollDetected;
            if (scrollDetected = true) {
              _pageController
                  .nextPage(
                      duration: const Duration(milliseconds: 50),
                      curve: Curves.easeInOut)
                  .then((value) => scrollDetected = false);
            } else {
              _pageController
                  .previousPage(
                      duration: const Duration(milliseconds: 50),
                      curve: Curves.easeInOut)
                  .then((value) => scrollDetected = false);
            }
          });
        },
        child: Stack(
          children: [
            PageView(
              onPageChanged: (value) {
                _currentPage = value;
                setState(() {});
              },
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              children: [
                VideoScreen(video_model: modelList, isFollowing: false),
                VideoScreen(video_model: foryouList, isFollowing: true),
              ],
            ),
            Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          _currentPage = 0;
                          _pageController
                              .previousPage(
                                  duration: const Duration(milliseconds: 50),
                                  curve: Curves.easeInOut)
                              .then((value) => scrollDetected = false);
                        });
                      },
                      child: Text(
                        'Following',
                        style: TextStyle(
                            fontSize: 16,
                            color: _currentPage == 0
                                ? Colors.white
                                : const Color.fromARGB(255, 188, 187, 187)),
                      )),
                  const SizedBox(
                    width: 1,
                  ),
                  const Text(
                    '|',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          _currentPage = 1;
                          _pageController
                              .nextPage(
                                  duration: const Duration(milliseconds: 50),
                                  curve: Curves.easeInOut)
                              .then((value) => scrollDetected = false);
                        });
                      },
                      child: Text(
                        'For You',
                        style: TextStyle(
                            fontSize: 18,
                            color: _currentPage == 1
                                ? Colors.white
                                : const Color.fromARGB(255, 188, 187, 187)),
                      )),
                ],
              ),
            ),
          ],
        ));
  }
}
