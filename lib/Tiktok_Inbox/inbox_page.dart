import 'package:flutter/material.dart';
import 'package:tiktok_project/Tiktok_Inbox/direct_messages.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
           const SizedBox(width: 115,),
               const Text(
                'All activity',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
               const  SizedBox(width: 1,),
            const     Icon(Icons.arrow_drop_down,size: 25,),
                  const SizedBox(width: 66,),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const   DirectMessages()));
                  }, icon: const  ImageIcon(AssetImage('assets/Vector 3 (Stroke).png')) )
              ],
            ),
            const SizedBox(height: 200,),
            Image.asset('assets/Message Icon-3.png'),
const SizedBox(height: 25,),
            const Text(
              'Notifications aren`t available',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            const SizedBox(height: 7,),
             const Text(  textAlign: TextAlign.center,
              'Notifications about your account will appear here',
              style: TextStyle(   color: Colors.grey,  fontSize: 14),
            )
        
        
          ],
        ),
      ),
    );
  }
}
