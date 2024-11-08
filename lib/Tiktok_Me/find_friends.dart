import 'package:flutter/material.dart';

class FindFriends extends StatelessWidget {
  const FindFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Find friends',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
           
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage('assets/Scanner Icon.png'),
                size: 22,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              decoration: 
              
             const   InputDecoration(
                border:   OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)), ),
                  fillColor: Colors.grey,
                  prefix:  Icon(
                    Icons.search,
                  ),
                  hintText:  'Search',
                  hintStyle: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 204, 201, 201))),
        
            ),
           const  SizedBox(height: 15,),
           Row( mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container( height: 56,width: 56,
                decoration:   const  BoxDecoration(color: Color.fromARGB(255, 243, 116, 107), borderRadius: BorderRadius.all(Radius.circular(90))
                 ),
        child: const  Center(child:  ImageIcon(AssetImage('assets/Add Account Icon.png'), size: 29,)),
              ),
              const SizedBox(width: 5,),
             const  Text('Invite friends', style: TextStyle(fontSize: 15),),
            const  Spacer(),
            IconButton(onPressed: (){}, icon:  const Icon(Icons.arrow_forward_ios)),
              
            ],
           ) ,
           const SizedBox(height: 20,),
             Row( mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container( height: 56,width: 56,
                decoration:   const  BoxDecoration(color: Color.fromARGB(255, 127, 218, 130), borderRadius: BorderRadius.all(Radius.circular(90))
                 ),
        child: const  Center(child:  ImageIcon(AssetImage('assets/Cal Soild Icon.png'), size: 29,)),
              ),
              const SizedBox(width: 5,),
             const  Text('Find contacts', style: TextStyle(fontSize: 15),),
            const  Spacer(),
            IconButton(onPressed: (){}, icon:  const Icon(Icons.arrow_forward_ios)),
              
            ],
           ) ,
           const SizedBox(height: 20,),
         Row( mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/Facebook.png', height:54 , width: 54,),
              const SizedBox(width: 5,),
             const  Text('Find contacts', style: TextStyle(fontSize: 15),),
            const  Spacer(),
            IconButton(onPressed: (){}, icon:  const Icon(Icons.arrow_forward_ios)),
              
            ],
           ) ,
           const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
