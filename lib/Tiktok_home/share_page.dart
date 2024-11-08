import 'package:flutter/material.dart';

class SharePage extends StatefulWidget {
  const SharePage({super.key});

  @override
  State<SharePage> createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:const EdgeInsets.all(8),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           const Text(
              'Share to',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
           const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children:  [
              const  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/WhatsApp Logo.png'),
                      width: 47,
                      height: 47,
                    ),
                    Text(
                      'WhatsApp',
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              const  SizedBox(
                  width: 10,
                ),
             const   Column(mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/WhatsApp Logo.png'),
                      width: 47,
                      height: 47,
                    ),
                    Text(
                      'WhatsApp\nstatus',textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              const  SizedBox(
                  width: 10,
                ),
                 Column(mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                     
                      width: 47,
                      height: 47,
                      decoration:  const BoxDecoration( color: Color.fromARGB(255, 222, 45, 86),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                      child:Image.asset('assets/Message Icon-2.png'),
                    ),
                   const Text(
                      'Message',
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                 const   Column(mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/SMS Logo.png'),
                      width: 47,
                      height: 47,
                    ),
                    Text(
                      'SMS',
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              const  SizedBox(
                  width: 10,
                ),
                  const   Column(mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/Messenger Logo.png'),
                      width: 47,
                      height: 47,
                    ),
                    Text(
                      'Messanger',
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
              const  SizedBox(
                  width: 10,
                ),
                 const   Column(  mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/Instagram Logo.png'),
                      width: 47,
                      height: 47,
                    ),
                    Text(
                      'Instagram',
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
             
              ],
            ),

           const SizedBox(height:25 ,),

           Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
  Column(mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                     
                      width: 47,
                      height: 47,
                      decoration:  const BoxDecoration( color: Color.fromARGB(255, 226, 225, 225),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                      child:Image.asset('assets/Union.png'),
                    ),
                   const Text(
                      'Report',
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                 Column(mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                     
                      width: 47,
                      height: 47,
                      decoration:  const BoxDecoration( color: Color.fromARGB(255, 226, 225, 225),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                      child:Image.asset('assets/Broken Heart Icon.png'),
                    ),
                   const Text(
                      'Not\nInterested',textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                 Column(mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                     
                      width: 47,
                      height: 47,
                      decoration:  const BoxDecoration( color: Color.fromARGB(255, 226, 225, 225),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                      child:Image.asset('assets/Download Icon.png'),
                    ),
                   const Text(
                      'Save video',
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                     
                      width: 47,
                      height: 47,
                      decoration:  const BoxDecoration( color:  Color.fromARGB(255, 226, 225, 225),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                      child:Image.asset('assets/Duet Icon.png'),
                    ),
                   const Text(
                      'Duet',
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                     
                      width: 47,
                      height: 47,
                      decoration:  const BoxDecoration( color: Color.fromARGB(255, 226, 225, 225),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                      child:Image.asset('assets/React Icon.png'),
                    ),
                   const Text(
                      'React',
                      style: TextStyle(fontSize: 11),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                     
                      width: 47,
                      height: 47,
                      decoration:  const BoxDecoration( color: Color.fromARGB(255, 226, 225, 225),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                      child:Image.asset('assets/Bookmark Icon.png'),
                    ),
                  const  Center(
                     child:  Text( 
                        'Add to\nFavorites',textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 11),
                      ),
                   ),
                  ],
                ),
              
            ],

           ),
          const  SizedBox(height: 2,),
          const SizedBox(
 height:50 ,
 child: Text('Cancel', style:  TextStyle(fontSize: 15),),
           )
          ],
        ),
      ),
    );
  }
}
