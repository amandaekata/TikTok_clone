
import 'package:tiktok_project/Tiktok_Me/edit_profile.dart';
import 'package:tiktok_project/Tiktok_Me/find_friends.dart';

import 'package:flutter/material.dart';

import 'package:tiktok_project/Model/video_model.dart';
import 'package:tiktok_project/Tiktok_Me/privacy_settings.dart';
import 'package:tiktok_project/widgets/thumbnail_widget.dart';

class MePage extends StatefulWidget {
  const MePage({super.key,});
 
  @override
  State<MePage> createState() => _MePageState();
}

class _MePageState extends State<MePage>  {
// Future<ThumbnailWidget> genThumbnail(ThumbnailRequest r) async {
 
//  final byteData = await rootBundle.load(widget.modelList.video);
// Directory tempDir = await getTemporaryDirectory();

// File tempVideo = File("${tempDir.path}, ${widget.modelList.video} ")
//   ..createSync(recursive: true)
//   ..writeAsBytesSync(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

// final fileName = await VideoThumbnail.thumbnailFile(
//   video: tempVideo.path,
//   thumbnailPath: (await getTemporaryDirectory()).path,
//   imageFormat: ImageFormat.PNG,  
//   quality: 100,
// ); 
// }
// void thumbnail() async {
// final uint8list = await VideoThumbnail.thumbnailData(
//   video: VideoWidget.path,
//   imageFormat: ImageFormat.JPEG,
//   maxWidth: 137, 
//   quality: 25,
// );}



 List<VideoModel> videoList = const [
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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Amanda Ekata',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(
                width: 1,
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 25,
              ),
            ],
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  const FindFriends()));
              },
              icon: const ImageIcon(
                AssetImage('assets/Add Account Icon.png'),
                size: 22,
              )),
          actions: [
            IconButton(
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>  const PrivacySettings()));
                }, icon: const Icon(Icons.more_horiz_outlined))
          ],
        ),
        body: SingleChildScrollView( scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(120),
                ),
                child: Image.asset(
                  'assets/program.jpg',
                  width: 96,
                  height: 96,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '@codeWithAmy',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '140',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Following',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '200',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Followers',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '10k',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Likes',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          fixedSize: const Size(164, 44),
                          side: const BorderSide(color: Colors.grey),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(2))),
                        ),
                        onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>  const  EditProfile()));
                        },
                        child: const Text('Edit profile',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold))),
                    const SizedBox(
                      width: 3,
                    ),
                    Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(2)),
                        child: const Center(
                            child: Icon(
                          Icons.bookmark_outline,
                          color: Colors.black,
                        ))),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Tap to add bio',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  )),
              const  TabBar(tabs: [ 
                 Tab(
                    icon:  ImageIcon(
                  AssetImage('assets/Tabs Icon.png'),
                  color: Colors.black,
                
                ), 
                ),
                 Tab(
                    icon: ImageIcon(
                  AssetImage('assets/Heart Hide Stroke Icon.png'),
                  color: Colors.grey,
                )),
              ]),
              SizedBox(
                height: 300,
                child: TabBarView(children: [  GridView.builder( 
                                  itemCount: videoList.length,
                  gridDelegate:  const  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,  ),
                  itemBuilder: (context, index) {
                return ThumbnailWidget(videoList: videoList[index], newList: videoList,);
                },
                                 ),
                               const   SizedBox(),
                //  GridView.builder( 
                //                    itemCount: videoList.length,
                //    gridDelegate:  const  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
                //    itemBuilder: (context, index) {
                //  return ThumbnailWidget(videoList: videoList[index]);
                //  },
                //                   ),
                  ],),
              )
           
            ],
          ),
        ),
      ),
    );
  }
}
