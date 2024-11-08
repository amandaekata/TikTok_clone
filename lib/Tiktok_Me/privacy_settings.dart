import 'package:flutter/material.dart';

class PrivacySettings extends StatelessWidget {
  const PrivacySettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text(
          'Privacy and settings',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ),
      body:   Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView( scrollDirection: Axis.vertical,
          child: Column(
           children: [
            const Row( mainAxisAlignment:  MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  Text('ACCOUNT', textAlign: TextAlign.start,
                 style:  TextStyle(color: Colors.grey, fontSize: 13),),
              ],
            ),
             const SizedBox(height: 15,),
             Row( mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          const  ImageIcon(AssetImage('assets/Account Stroke Icon.png'),size: 14, color: Colors.grey,),
           const SizedBox(width: 8 ,),
          const Text('Manage my account ', style: TextStyle(fontSize: 13),),
           const Spacer(),
          IconButton(onPressed: (){}, icon: const  Icon(Icons.arrow_forward_ios, size: 15)),
          
              ],
             ),
          
            const   SizedBox( height: 20,),
            Row( mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          const  ImageIcon(AssetImage('assets/Lock Stroke Icon.png'),size: 14, color: Colors.grey,),
           const SizedBox(width: 8 ,),
          const Text('Privacy and safety', style: TextStyle(fontSize: 13),),
           const Spacer(),
          IconButton(onPressed: (){}, icon: const  Icon(Icons.arrow_forward_ios, size: 15)),
          
              ],
             ),
          
            const   SizedBox( height: 20,),
            Row( mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          const  ImageIcon(AssetImage('assets/Camera Stroke Icon.png'),size: 14, color: Colors.grey,),
           const SizedBox(width: 8 ,),
          const Text('Content preferences', style: TextStyle(fontSize: 13),),
           const Spacer(),
          IconButton(onPressed: (){}, icon: const  Icon(Icons.arrow_forward_ios, size: 15)),
          
              ],
             ),
            const   SizedBox( height: 20,),
          
            Row( mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          const  ImageIcon(AssetImage('assets/Wallet Stroke Icon.png'),size: 14, color: Colors.grey,),
           const SizedBox(width: 8 ,),
          const Text('Balance', style: TextStyle(fontSize: 13),),
           const Spacer(),
          IconButton(onPressed: (){}, icon: const  Icon(Icons.arrow_forward_ios, size: 15)),
          
              ],
             ),
            const   SizedBox( height: 20,),
          
            Row( mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          const  ImageIcon(AssetImage('assets/Share Icon-2.png'),size: 14, color: Colors.grey,),
           const SizedBox(width: 8 ,),
          const Text('Share profile', style: TextStyle(fontSize: 13),),
           const Spacer(),
          IconButton(onPressed: (){}, icon: const  Icon(Icons.arrow_forward_ios, size: 15)),
          
              ],
             ),
            const   SizedBox( height: 20,),
          
            Row( mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          const  ImageIcon(AssetImage('assets/QR Code Icon.png'),size: 14, color: Colors.grey,),
           const SizedBox(width: 8 ,),
          const Text('TikCode', style: TextStyle(fontSize: 13),),
           const Spacer(),
          IconButton(onPressed: (){}, icon: const  Icon(Icons.arrow_forward_ios, size: 15)),
          
              ],
             ),
             const SizedBox(height: 10,),
           const    Divider(),
            const   SizedBox( height: 10,),
           const Row(mainAxisAlignment:  MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                 Text('GENERAL',  textAlign: TextAlign.start,style:  TextStyle(color: Colors.grey, fontSize: 13),),
             ],
           ),
           const   SizedBox( height: 15,),
          
            Row( mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          const  ImageIcon(AssetImage('assets/Bell Icon.png'),size: 14, color: Colors.grey,),
           const SizedBox(width: 8 ,),
          const Text('Push notifications', style: TextStyle(fontSize: 13),),
           const Spacer(),
          IconButton(onPressed: (){}, icon: const  Icon(Icons.arrow_forward_ios, size: 15)),
          
              ],
             ),
            const   SizedBox( height: 20,),
          
            Row( mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          const  ImageIcon(AssetImage('assets/Book Stroke Icon.png'),size: 14, color: Colors.grey,),
           const SizedBox(width: 8 ,),
          const Text('Language', style: TextStyle(fontSize: 13),),
           const Spacer(),
          IconButton(onPressed: (){}, icon: const  Icon(Icons.arrow_forward_ios, size: 15)),
          
              ],
             ),
            const   SizedBox( height: 20,),
          
            Row( mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          const  ImageIcon(AssetImage('assets/Umbrella Stroke Icon.png'),size: 14, color: Colors.grey,),
           const SizedBox(width: 8 ,),
          const Text('Digital Wellbeing', style: TextStyle(fontSize: 13),),
           const Spacer(),
          IconButton(onPressed: (){}, icon: const  Icon(Icons.arrow_forward_ios, size: 15)),
          
              ],
             ),
            const   SizedBox( height: 20,),
             Row( mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          const  ImageIcon(AssetImage('assets/Accebility Stroke Icon.png'),size: 14, color: Colors.grey,),
           const SizedBox(width: 8 ,),
          const Text('Accessibility', style: TextStyle(fontSize: 13),),
           const Spacer(),
          IconButton(onPressed: (){}, icon: const  Icon(Icons.arrow_forward_ios, size: 15)),
          
              ],
             ),
            const   SizedBox( height: 20,),
             Row( mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          const  ImageIcon(AssetImage('assets/Drop Stroke Icon.png'),size: 14, color: Colors.grey,),
           const SizedBox(width: 8 ,),
          const Text('Data Saver', style: TextStyle(fontSize: 13),),
           const Spacer(),
          IconButton(onPressed: (){}, icon: const  Icon(Icons.arrow_forward_ios, size: 15)),
          
              ],
             ),
          
          
            const   SizedBox( height: 10,),
            const    Divider(),
            const   SizedBox( height: 10,),
          const Row(mainAxisAlignment:  MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                 Text('SUPPORT',  textAlign: TextAlign.start, style:  TextStyle(color: Colors.grey, fontSize: 13),),
             ],
           ),
           const   SizedBox( height: 15,),
          
             Row( mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
          const  ImageIcon(AssetImage('assets/Pen Stroke Icon.png'),size: 14, color: Colors.grey,),
           const SizedBox(width: 8 ,),
          const Text('Report a problem', style: TextStyle(fontSize: 13),),
           const Spacer(),
          IconButton(onPressed: (){}, icon: const  Icon(Icons.arrow_forward_ios, size: 15,)),
          
              ],
             ),
            const   SizedBox( height: 20,),
          
          
          
          
             Row( mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
const Icon(Icons.question_mark_rounded, size: 14, color: Colors.grey,),
           const SizedBox(width: 8 ,),
          const Text('Help Center', style: TextStyle(fontSize: 13),),
           const Spacer(),
          IconButton(onPressed: (){}, icon: const  Icon(Icons.arrow_forward_ios, size: 15)),
          
              ],
             ),
            const   SizedBox( height: 20,),
           ], 
          ),
        ),
      ),
    );
  }
}