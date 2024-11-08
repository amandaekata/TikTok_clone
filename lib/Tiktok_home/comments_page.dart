import 'package:flutter/material.dart';
import 'package:tiktok_project/Model/comments_Model.dart';

import 'package:tiktok_project/widgets/comments_Widget.dart';

class CommentsPage extends StatefulWidget {
  const CommentsPage({super.key});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  List<CommentsModel> commentList = const [
    CommentsModel(
        name: 'martini_rond',
        profilePic: 'assets/Ellipse 5-2.JPG',
        comment: 'How lovely',
        replies: '5'),
    CommentsModel(
        name: 'maxjacobson',
        profilePic: 'assets/Ellipse 5-3.JPG',
        comment: 'Now, that`s Something to behold!',
        replies: '3'),
    CommentsModel(
        name: 'zackjohn',
        profilePic: 'assets/Ellipse 5.png', 
        comment: 'SLEEEEK',
        replies: '1'),
    CommentsModel(
        name: 'karrene',
        profilePic: 'assets/Ellipse 5.jpg',
        comment: 'No pressure',
        replies: '9'),
    CommentsModel(
        name: 'joshua_i',
        profilePic: 'assets/Ellipse 5-4.jpg',
        comment: 'My OCD could not do it',
        replies: '2'),
    CommentsModel(
        name: 'stacy_k',
        profilePic: 'assets/Ellipse 5-5.jpg',
        comment: 'love it',
        replies: '10'),
    CommentsModel(
        name: 'annabelle222',
        profilePic: 'assets/Ellipse 5-2.png',
        comment: 'wowowowowowowow',
        replies: '3'),
    CommentsModel(
        name: 'here4Tacos',
        profilePic: 'assets/Ellipse 5.png',
        comment: 'yum!',
        replies: '7'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 5,
            ),
            const Text(
              '579 comments',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: commentList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CommentsWidget(commentList: commentList[index]);
                    })),
            Row(
              children: [
                SizedBox(
                  height: 75,
                  width: 260,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'Add Comment...',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const ImageIcon(
                        AssetImage('assets/Ad Sign Stroke Icon.png'))),
                IconButton(
                    onPressed: () {},
                    icon: const ImageIcon(
                        AssetImage('assets/Emoji Stroke Icon.png')))
              ],
            )
          ],
        ),
      ),
    );
  }
}
