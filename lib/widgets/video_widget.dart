import 'package:flutter/material.dart';
import 'package:tiktok_project/Model/video_model.dart';
import 'package:tiktok_project/Tiktok_home/comments_page.dart';
import 'package:tiktok_project/Tiktok_home/music_page.dart';

import 'package:tiktok_project/Tiktok_home/share_page.dart';

import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({super.key, required this.videoList, this.foryou = false});

  final VideoModel videoList;
  final bool foryou;

  static var path;
  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  /* with SingleTickerProviderStateMixin */
  int display = 6445;
  // late AnimationController _animControllerSlideIn;
  // late Animation<Offset> _slideIn;
  bool isPressed = false;
  bool isLiked = false;

  late VideoPlayerController _controller;
  //bool _useRtlText = false;
  @override
  void initState() {
    super.initState();

    // _animControllerSlideIn =
    //     AnimationController(duration: const Duration(seconds: 4), vsync: this)
    //       ..forward()
    //       ..addListener(() {
    //         if (_animControllerSlideIn.isCompleted) {
    //           _animControllerSlideIn.repeat();
    //         }
    //       });
    // _slideIn =
    //     Tween<Offset>(begin: const Offset(0, 0), end: const Offset(-1, 0))
    //         .animate(CurvedAnimation(
    //             parent: _animControllerSlideIn, curve: Curves.easeInOut));
    // if (widget.isDelay) {
    //   Future.delayed(const Duration(seconds: 4), () {
    //     if (mounted) {
    //        _animControllerSlideIn.forward();
    //     }
    //  //   _animControllerSlideIn.forward();
    //   });
    // }
    _controller = VideoPlayerController.asset(widget.videoList.video)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
        _controller.setLooping(true);
      });
  }

  void _openPopup(context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: const Color.fromARGB(255, 221, 220, 220),
        builder: (BuildContext bc) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * .70,
              width: MediaQuery.of(context).size.width,
              child: const CommentsPage());
        });
  }

  void _openShare(context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: const Color.fromARGB(255, 220, 218, 218),
        builder: (BuildContext bc) {
          return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              height: MediaQuery.of(context).size.height * .40,
              width: MediaQuery.of(context).size.width,
              child: const SharePage());
        });
  }

  bool followed =  false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       backgroundColor: Colors.black,
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
                // _animControllerSlideIn.isAnimating
                //     ? _animControllerSlideIn.reset()
                //     : _animControllerSlideIn.repeat();
              });
            },
            child: Container(
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: 
                      
                    440/MediaQuery.of(context).size.height,
                      child: VideoPlayer(_controller),
                    )
                  : Container(),
            ),
          ),
          Center(
            child: Icon(
              _controller.value.isPlaying ? null : Icons.play_arrow,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Positioned(
            left: 343,
            top: 360,
            right: 5,
            bottom: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(height: 55,),

                    Positioned(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(70)),
                        child: Image.asset(
                          widget.videoList.picture,
                          width: 47,
                          height: 47,
                       fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    widget.foryou
                        ? Positioned(
                            bottom: 0,
                            left: 10,
                            right: 10,
                            child: GestureDetector( onTap: (){
                              setState(() {
                                followed= !followed;
                              });
                            },
                              child: Container(
                                padding:  const EdgeInsets.all(5),
                                                       
                                decoration: BoxDecoration(
                                  color: followed ? Colors.white : Colors.red,
                                borderRadius: const   BorderRadius.all(Radius.circular(100)),),
                              
                                child:  followed 
                                        ? const Icon( 
                                            Icons.check,
                                            size: 12,
                                            color: Colors.red,
                                          )
                                        : const Icon( 
                                            Icons.add,
                                            size: 12,
                                            color: Colors.white,
                                          )
                              ),
                            ),
                          )
                        : const SizedBox()
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        isLiked = !isLiked;

                        if (isLiked == true) {
                          display++;
                        } else {
                          if (isLiked == false) {
                            display--;
                          }
                        }
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      size: 30,
                      color: isLiked ? Colors.red : Colors.white,
                    )),
                Text(
                  display.toString(),
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
                const SizedBox(
                  height: 5,
                ),
                IconButton(
                  onPressed: () {
                    _openPopup(context);
                  },
                  icon: Image.asset(
                    'assets/Message Icon.png',
                    height: 33.23,
                    width: 35,
                  ),
                ),
                Text(
                  widget.videoList.comments,
                  style: const TextStyle(color: Colors.white, fontSize: 13),
                ),
                const SizedBox(
                  height: 5,
                ),
                IconButton(
                  onPressed: () {
                    _openShare(context);
                  },
                  icon: Image.asset(
                    'assets/Share Icon.png',
                    height: 26.84,
                    width: 34.08,
                  ),
                ),
                const Text(
                  'Share',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ],
            ),
          ),
          Positioned(
            right: 5,
            bottom: 3,
            child: Row(
              children: [
                Image.asset(
                  'assets/Floating Tones.png',
                  width: 53,
                  height: 76,
                ),
                Image.asset(
                  'assets/Disc.png',
                  width: 49,
                  height: 49,
                ),
              ],
            ),
          ),
          Positioned(
            left: 5,
            top: 680,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.videoList.name,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    Text(
                      widget.videoList.date,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 198, 196, 196),
                          fontSize: 17),
                    ),
                  ],
                ),
                Text(
                  widget.videoList.caption,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                const SizedBox(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/Music Icon.png'),
                    const SizedBox(width: 5),

//_buildMarquee()

                    // SlideTransition(
                    //   position: _slideIn,
                    //child:
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>  const MusicPage()));
                         
                        });
                       
                      },
                      child: Text( widget.videoList.music,
                      
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                    ),
                    
                    //  ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  //  Widget _buildMarquee() {
  //   return Marquee(
  //     key: Key("$_useRtlText"),
  //     text: !_useRtlText
  //         ? 'There once was a boy who told this story about a boy: "'
  //         : 'פעם היה ילד אשר סיפר סיפור על ילד:"',
  //     velocity: 50.0,
  //   );
  // }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
}
