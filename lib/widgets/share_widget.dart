
import 'package:flutter/material.dart';
import 'package:tiktok_project/Model/share_model.dart';

class ShareWidget extends StatefulWidget {
  const ShareWidget({super.key, required this.modelList});
 final ShareModel modelList;

  @override
  State<ShareWidget> createState() => _ShareWidgetState();
}

class _ShareWidgetState extends State<ShareWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center,
       children: [
IconButton(onPressed: (){}, icon: ImageIcon(AssetImage(widget.modelList.image),size: 47,)),


       ],
    );
  }
}