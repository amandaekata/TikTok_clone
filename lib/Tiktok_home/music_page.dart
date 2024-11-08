import 'package:flutter/material.dart';
import 'package:tiktok_project/Model/video_model.dart';

import '../widgets/thumbnail_widget.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key});

  @override
  State<MusicPage> createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  List<VideoModel> videoList = const [ 
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
        picture: 'assets/nature.JPG'),

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
    ),

        VideoModel( video: 'assets/IMG_3758.mp4',
        name: '@codeWithAmy ',
        date: '. 12-14',
        music: 'Original sound - @codeWithAmy',
        caption: '#OOTD #Mobildev',
        comments: '873',
        picture: 'assets/program.jpg'),

        VideoModel( video: 'assets/Ladies.mp4',
        name: '@codeWithAmy ',
        date: '. 12-10',
        music: 'Original sound - @codeWithAmy',
        caption: 'This event was so refreshing ',
        comments: '72',
        picture: 'assets/program.jpg')
        ,
        VideoModel( video: 'assets/program.mp4',
        name: '@codeWithAmy',
        date: '. 12-05',
        music: 'Original sound - @codeWithAmy',
        caption: 'Introduction to API  #Flutter',
        comments: '800',
        picture: 'assets/program.jpg'),
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
      video: 'assets/second.mp4',
      name: '@NatureVids ',
      date: '. 1-29',
      music: 'Tems - Me and You(ft. Rhianna)',
      caption: 'We Love Trees',
      comments: '3422',
      picture: 'assets/nature.JPG',
    ),
  VideoModel(
        video: 'assets/outside.mp4',
        name: '@Outside ',
        date: ' .1-30',
        music: 'Original Sound - @Outside',
        caption: 'Go outside today. It is beautiful',
        comments: '2598',
        picture: 'assets/nature.JPG'),
         VideoModel(
      video: 'assets/IMG_4128.mp4',
      name: '@Amanda__ ',
      date: '. 1-28',
      music: 'Avicii - Waiting For You(ft. Asake)',
      caption: '#Harvoxx #00TD',
      comments: '64',
      picture: 'assets/IMG_4110.JPG',
    ),
    VideoModel( video: 'assets/program.mp4',
        name: '@codeWithAmy ',
        date: '. 1-30',
        music: 'Original sound - @codeWithAmy',
        caption: 'Introduction to API  #Flutter',
        comments: '72',
        picture: 'assets/program.jpg'),

        VideoModel( video: 'assets/IMG_3758.mp4',
        name: '@codeWithAmy ',
        date: '. 12-14',
        music: 'Original sound - @codeWithAmy',
        caption: '#OOTD #Mobildev',
        comments: '873',
        picture: 'assets/program.jpg'),

        VideoModel( video: 'assets/Ladies.mp4',
        name: '@codeWithAmy ',
        date: '. 12-10',
        music: 'Original sound - @codeWithAmy',
        caption: 'This event was so refreshing ',
        comments: '72',
        picture: 'assets/program.jpg')
        ,
        VideoModel( video: 'assets/program.mp4',
        name: '@codeWithAmy',
        date: '. 12-05',
        music: 'Original sound - @codeWithAmy',
        caption: 'Introduction to API  #Flutter',
        comments: '800',
        picture: 'assets/program.jpg'),

        VideoModel( video: 'assets/15.mp4',
        name: '@codeWithAmy',
        date: '. 11-30',
        music: 'Original sound - @codeWithAmy',
        caption: 'catch a break, sometimes! ',
        comments: '150',
        picture: 'assets/program.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(AssetImage('assets/Share Icon.png')),
            color: Colors.black,
            iconSize: 21,
          )
        ],
      ),
      body: SingleChildScrollView( scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row( mainAxisAlignment: MainAxisAlignment.start,
       // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/nature.JPG'),
                          fit: BoxFit.fitWidth)),
                          child: const  Icon(Icons.play_arrow, color: Colors.white,),
                ),
                const SizedBox(
                  width: 10,
                ),
                 Column( mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Text(
                      'Me and You',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                   const  SizedBox(
                      height: 10,
                    ),
                   const Text(
                      'Tems (ft. Rhianna)',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  const  SizedBox(
                      height: 5,
                    ),
                 const    Text(
                      '1.7K videos',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                 const   SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                       onPressed: () {
                         
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          fixedSize: const Size(180, 20),
                          side: const BorderSide(color: Colors.grey),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(2))),
                        ),
                       
                        child: 
                                     const Row( mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                       Icon(Icons.bookmark_outline_outlined,color: Colors.black,    size: 15,),
                       SizedBox(width: 1,),
                         Text('Add to Favorites',
                           style: TextStyle(
                               color: Colors.black,
                               fontSize: 13,
                               fontWeight: FontWeight.bold)),
                               
                      ],
                    )),
                             
                   
                  ],
                )
              ],
            ),
             const    SizedBox(height: 30,),
             Stack(
              children: [

            
                              SizedBox(height: 780,
                                child: GridView.builder( 
                                      itemCount: videoList.length,
                                                  gridDelegate:  const  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,  ),
                                                  itemBuilder: (context, index) {
                                                return ThumbnailWidget(videoList: videoList[index], newList: videoList,);
                                                },
                                     ),
                              ),
                              Positioned( bottom: 300, left: 120, right: 100,
                                child: Center(
                                  child: SizedBox( width: 178, height: 52,
                                    child: FloatingActionButton( 
                                      backgroundColor: const Color.fromARGB(255, 224, 46, 88) ,
                                      onPressed: (){
                                    
                                    } ,child:  const Padding(
                                      padding:  EdgeInsets.all(8.0),
                                      child:  Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                         ImageIcon(AssetImage('assets/Videocamera Icon.png'),color:  Colors.white,),
                                         SizedBox(height: 3,),
                                         Text('Use this sound', style: TextStyle(color: Colors.white, fontSize: 16),)
                                        ],
                                      ),
                                    ),
                                    
                                    ),
                                  ),
                                ),
                              ),
                                ],
             )
          ],
        ),
      ),
    );
  }
}
