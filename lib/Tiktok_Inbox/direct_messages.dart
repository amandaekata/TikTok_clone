import 'package:flutter/material.dart';

class DirectMessages extends StatelessWidget {
  const DirectMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title:  const Text('Direct Messages',  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),actions: [IconButton(onPressed: (){}, icon: const  Icon(Icons.add))], ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               
                const SizedBox(height: 200,),
                Image.asset('assets/Message Icon-4.png'),
            const SizedBox(height: 25,),
                const Text(
                  'Message your friends',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const SizedBox(height: 7,),
                 const Text(  textAlign: TextAlign.center,
                  'Share videos or start a conversation',
                  style: TextStyle(   color: Colors.grey,  fontSize: 14),
                )
            
            
              ],
            ),
          ],
        ),
      ),
    );
  }
}