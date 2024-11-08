


import 'package:flutter/material.dart';
import 'package:tiktok_project/Model/comments_Model.dart';

class CommentsWidget extends StatefulWidget {
  final CommentsModel commentList;
  const CommentsWidget({super.key, required this.commentList});


  @override
  State<CommentsWidget> createState() => _CommentsWidgetState();
}

class _CommentsWidgetState extends State<CommentsWidget> {
   bool isLiked = false;
  int display = 8098;
  @override
  Widget build(BuildContext context) {
    return 
       Column(
         children: [
           Row( mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                        borderRadius: const  BorderRadius.all(Radius.circular(70)),
                        child: Image.asset(
                          widget.commentList.profilePic,
                          width: 32,
                          height: 32,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      const SizedBox(width: 15,),
                      Column(mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.commentList.name, style: const TextStyle(color: Colors.grey, fontSize: 13),),
                          const SizedBox(height: 2,),
                          Text(widget.commentList.comment, style: const TextStyle(fontSize: 15),),
                           const SizedBox(height: 2,),
                          Row(
                            children:  [
                             const  Text('View replies ', style:  TextStyle(color: Colors.grey, fontSize: 13),),
                             const  Text('(', style:  TextStyle(color: Colors.grey, fontSize: 13),),
                              Text(widget.commentList.replies, style:  const TextStyle(color: Colors.grey, fontSize: 13)),
                              const  Text(')', style:  TextStyle(color: Colors.grey, fontSize: 13),),
                              Image.asset('assets/Vector 2.png'),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                        Column(
                          children: [
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
                                size: 15.5,
                                
                                color: isLiked ? Colors.red : Colors.white,
                              )),
                                            Text(
                            display.toString(),
                            style: const TextStyle(color: Colors.grey, fontSize: 13),
                                            ),
                          ],
                        ),
            ],
                 
               ),
            const   SizedBox(height: 20,),
         ],
       ) 
    ;
    
  }
}