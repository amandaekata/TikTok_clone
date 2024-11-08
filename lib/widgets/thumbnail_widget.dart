import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tiktok_project/Model/video_model.dart';
import 'package:tiktok_project/Tiktok_home/video_screen.dart';

import 'package:video_thumbnail/video_thumbnail.dart';

class ThumbnailWidget extends StatefulWidget {
   ThumbnailWidget({super.key, required this.videoList,required this.newList});
  final VideoModel videoList;
List<VideoModel> newList ;
  @override
  State<ThumbnailWidget> createState() => _ThumbnailWidgetState();
}

class _ThumbnailWidgetState extends State<ThumbnailWidget> {
  
  @override
  void initState() {
    thumbnail();
    super.initState();
  }
String? fileName;

  void thumbnail() async {
    final byteData = await rootBundle.load(widget.videoList.video);
    Directory tempDir = await getTemporaryDirectory();

    File tempVideo = File("${tempDir.path}/${widget.videoList.video}")
      ..createSync(recursive: true)
      ..writeAsBytesSync(byteData.buffer
          .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

    fileName = await VideoThumbnail.thumbnailFile(
      video: tempVideo.path,
      thumbnailPath: (await getTemporaryDirectory()).path,
      imageFormat: ImageFormat.PNG,
      quality: 100,
    

    );
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const  EdgeInsets.all(1),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> VideoScreen(video_model: widget.newList, index: widget.newList.indexOf(widget.videoList), )));
        },
        child: Container(
        
            color: Colors.white,
            child:  fileName != null
            
            ? Image.file(File(fileName!), fit: BoxFit.fitWidth,): const SizedBox() ),
      ),
    );
  }
}
